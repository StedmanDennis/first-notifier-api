package com.first_notifier_api.domain.repositories;

import com.first_notifier_api.infrastructure.entity.TeamPosition;

import io.swagger.v3.oas.annotations.media.Schema;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.ListCrudRepository;

import java.util.List;

public interface ITeamPositionRepository extends ListCrudRepository<TeamPosition, String> {
    // TODO remove @Schema annotations from respository, create a dto in
    // dto.http.response that is mapped from the query result
    @Schema(requiredProperties = { "teamNumber", "x", "y" })
    interface GetTeamPositionsQueryResult {
        String getTeamNumber();

        int getX();

        int getY();
    }

    // TODO remove the join with team
    @Query("select t.teamNumber as teamNumber, tp.x as x, tp.y as y from Team t join t.position tp")
    List<GetTeamPositionsQueryResult> getTeamPositions();
}
