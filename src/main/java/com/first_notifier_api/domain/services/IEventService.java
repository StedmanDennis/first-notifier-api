package com.first_notifier_api.domain.services;

import com.first_notifier_api.domain.dto.http.request.BatchUpdateTeamPositionsRequest;
import com.first_notifier_api.domain.dto.http.request.UpdateTeamRequest;
import com.first_notifier_api.domain.repositories.IMatchRepository;
import com.first_notifier_api.domain.repositories.ISchoolRepository;
import com.first_notifier_api.domain.repositories.ITeamPositionRepository;
import com.first_notifier_api.domain.repositories.ITeamRepository;

import java.util.List;

import org.springframework.lang.NonNull;

public interface IEventService {
    void assignQueuerToTeam(@NonNull Long matchAllianceId, @NonNull String teamNumber, Long queuerId);

    List<IMatchRepository.EventScheduleQueryResult> getEventSchedule();

    List<ITeamRepository.GetTeamsQueryResult> getTeams();

    void removeTeam(@NonNull String teamNumber);

    void updateTeam(@NonNull UpdateTeamRequest updatedTeam);

    List<ITeamPositionRepository.GetTeamPositionsQueryResult> getTeamPositions();

    void batchUpdateTeamPositions(@NonNull BatchUpdateTeamPositionsRequest request);

    List<ISchoolRepository.GetAllSchoolsQueryResult> getAllSchools();
}
