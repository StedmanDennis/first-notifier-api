package com.first_notifier_api.domain.services;

import com.first_notifier_api.domain.dto.http.request.UpdateTeamRequest;
import com.first_notifier_api.domain.repositories.IMatchRepository;
import com.first_notifier_api.domain.repositories.ISchoolRepository;
import com.first_notifier_api.domain.repositories.ITeamPositionRepository;
import com.first_notifier_api.domain.repositories.ITeamRepository;

import java.util.List;

public interface IEventService {
    void assignQueuerToTeam(Long matchAllianceId, String teamNumber, Long queuerId);
    List<IMatchRepository.EventScheduleQueryResult> getEventSchedule();
    List<ITeamRepository.GetTeamsQueryResult> getTeams();
    void removeTeam(String teamNumber);
    void updateTeam(UpdateTeamRequest updatedTeam);
    List<ITeamPositionRepository.GetTeamPositionsQueryResult> getTeamPositions();
    List<ISchoolRepository.GetAllSchoolsQueryResult> getAllSchools();
}
