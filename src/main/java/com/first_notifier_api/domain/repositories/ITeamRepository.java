package com.first_notifier_api.domain.repositories;

import com.first_notifier_api.infrastructure.entity.Team;

import io.swagger.v3.oas.annotations.media.Schema;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.ListCrudRepository;

import java.util.List;

public interface ITeamRepository extends ListCrudRepository<Team, String> {
    // TODO remove @Schema annotations from respository, create a dto in
    // dto.http.response that is mapped from the query result
    @Schema(requiredProperties = { "teamNumber", "name", "schoolId" })
    interface GetTeamsQueryResult {
        String getTeamNumber();

        String getName();

        int getSchoolId();
    }

    @Query("select t.teamNumber as teamNumber, t.name as name, s.id as schoolId from Team t join t.school s")
    List<GetTeamsQueryResult> getTeams();

    @Query("select t, s from Team t join t.school s where t.teamNumber = :teamNumber")
    Team getTeamForUpdate(String teamNumber);
}
