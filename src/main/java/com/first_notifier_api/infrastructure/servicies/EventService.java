package com.first_notifier_api.infrastructure.servicies;


import com.first_notifier_api.domain.events.QueuerAssigned;
import com.first_notifier_api.domain.repositories.IMatchAllianceTeamRepository;
import com.first_notifier_api.domain.repositories.IMatchRepository;
import com.first_notifier_api.domain.repositories.IQueuerRepository;
import com.first_notifier_api.domain.repositories.ITeamRepository;
import com.first_notifier_api.domain.services.IEventService;
import com.first_notifier_api.infrastructure.entity.MatchAllianceTeam;
import com.first_notifier_api.infrastructure.entity.Queuer;
import com.first_notifier_api.infrastructure.entity.idclass.MatchAllianceTeamId;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class EventService implements IEventService {
    private final IQueuerRepository queuerRepository;
    private final IMatchAllianceTeamRepository matchAllianceTeamRepository;
    private final IMatchRepository matchRepository;
    private final ITeamRepository teamRepository;
    private final NotifierService notifierService;

    public EventService(IQueuerRepository IQueuerRepository, IMatchAllianceTeamRepository IMatchAllianceTeamRepository, IMatchRepository matchRepository, ITeamRepository teamRepository, NotifierService notifierService) {
        this.queuerRepository = IQueuerRepository;
        this.matchAllianceTeamRepository = IMatchAllianceTeamRepository;
        this.matchRepository = matchRepository;
        this.teamRepository = teamRepository;
        this.notifierService = notifierService;

    }

    @Transactional
    public void assignQueuerToTeam(Long matchAllianceId, String teamNumber, Long queuerId) {
        boolean isUnassignment = queuerId == null;

        Optional<MatchAllianceTeam> matchAllianceTeamOptional = matchAllianceTeamRepository.findById(new MatchAllianceTeamId(matchAllianceId, teamNumber));

        if (matchAllianceTeamOptional.isEmpty()) return;
        MatchAllianceTeam matchAllianceTeam = matchAllianceTeamOptional.get();
        Queuer newQueuer = null;
        Queuer oldQueuer = matchAllianceTeam.getAssignedQueuer();
        if (!isUnassignment){
            Optional<Queuer> queuerOptional = queuerRepository.findById(queuerId);
            if (queuerOptional.isEmpty()) return;
            newQueuer = queuerOptional.get();
        }
        if (newQueuer == oldQueuer) return;

        matchAllianceTeam.setAssignedQueuer(newQueuer);

        matchAllianceTeamRepository.save(matchAllianceTeam);
        notifierService.queuerAssigned(new QueuerAssigned(matchAllianceTeam.getMatchAlliance().getMatch().getScheduleOrder(), teamNumber, queuerId, oldQueuer != null ? oldQueuer.getId() : null));
    }

    public List<IMatchRepository.EventScheduleQueryResult> getEventSchedule() {
        return matchRepository.getEventSchedule();
    }

    public List<ITeamRepository.GetTeamsQueryResult> getTeams() {
        return teamRepository.getTeams();
    }

    public List<ITeamRepository.GetTeamPositionsQueryResult> getTeamPositions() {
        return teamRepository.getTeamPositions();
    }
}
