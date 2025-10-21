package com.first_notifier_api.domain.repositories;

import com.first_notifier_api.infrastructure.entity.TeamPosition;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.ListCrudRepository;

import java.util.List;

public interface ITeamPositionRepository extends ListCrudRepository<TeamPosition, String> {
    interface GetTeamPositionsQueryResult {
        String getTeamNumber();
        int getX();
        int getY();
    }


    //Todo remove the join with team
    @Query("select t.teamNumber as teamNumber, tp.x as x, tp.y as y from Team t join t.position tp")
    List<GetTeamPositionsQueryResult> getTeamPositions();
}
