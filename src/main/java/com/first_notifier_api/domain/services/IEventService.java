package com.first_notifier_api.domain.services;

import com.first_notifier_api.domain.repositories.IMatchRepository;
import com.first_notifier_api.domain.repositories.ITeamRepository;

import java.util.List;

public interface IEventService {
    void assignQueuerToTeam(Long matchAllianceId, String teamNumber, Long queuerId);
    List<IMatchRepository.EventScheduleQueryResult> getEventSchedule();
    List<ITeamRepository.GetTeamsQueryResult> getTeams();
    List<ITeamRepository.GetTeamPositionsQueryResult> getTeamPositions();
}
