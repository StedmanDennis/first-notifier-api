package com.first_notifier_api.domain.repositories;

import com.first_notifier_api.infrastructure.entity.Team;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.ListCrudRepository;

import java.util.List;
import java.util.Optional;

public interface ITeamRepository extends ListCrudRepository<Team, String> {
    interface GetTeamsQueryResult {
        String getTeamNumber();
        String getName();
        int getSchoolId();
    }

    @Query("select t.teamNumber as teamNumber, t.name as name, s.id as schoolId from Team t join t.school s")
    List<GetTeamsQueryResult> getTeams();

    @Query("select t, s from Team t join t.school s where t.teamNumber = :teamNumber")
    Optional<Team> getTeamForUpdate(String teamNumber);
}
