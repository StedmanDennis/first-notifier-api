package com.first_notifier_api.infrastructure.servicies;


import com.first_notifier_api.domain.dto.http.request.UpdateTeamRequest;
import com.first_notifier_api.domain.events.QueuerAssigned;
import com.first_notifier_api.domain.repositories.*;
import com.first_notifier_api.domain.services.IEventService;
import com.first_notifier_api.infrastructure.entity.MatchAllianceTeam;
import com.first_notifier_api.infrastructure.entity.Queuer;
import com.first_notifier_api.infrastructure.entity.Team;
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
    private final ITeamPositionRepository teamPositionRepository;
    private final ISchoolRepository schoolRepository;
    private final NotifierService notifierService;

    public EventService(IQueuerRepository IQueuerRepository, IMatchAllianceTeamRepository IMatchAllianceTeamRepository, IMatchRepository matchRepository, ITeamRepository teamRepository, ITeamPositionRepository teamPositionRepository, ISchoolRepository schoolRepository, NotifierService notifierService) {
        this.queuerRepository = IQueuerRepository;
        this.matchAllianceTeamRepository = IMatchAllianceTeamRepository;
        this.matchRepository = matchRepository;
        this.teamRepository = teamRepository;
        this.teamPositionRepository = teamPositionRepository;
        this.schoolRepository = schoolRepository;
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

    public void removeTeam(String teamNumber) {
        teamRepository.deleteById(teamNumber);
    }

    public void updateTeam(UpdateTeamRequest updatedTeam) {
        Optional<Team> targetOptional = teamRepository.getTeamForUpdate(updatedTeam.teamNumber());

        if (targetOptional.isPresent()){
            Team target = targetOptional.get();
            if (updatedTeam.name() != null){
                target.setName(updatedTeam.name());
            }
            if (updatedTeam.schoolId() != null){
                target.getSchool().setId(updatedTeam.schoolId());
            }
            teamRepository.save(target);
        }
    }

    public List<ITeamPositionRepository.GetTeamPositionsQueryResult> getTeamPositions() {
        return teamPositionRepository.getTeamPositions();
    }

    public List<ISchoolRepository.GetAllSchoolsQueryResult> getAllSchools() {
        return schoolRepository.getAllSchools();
    }
}
