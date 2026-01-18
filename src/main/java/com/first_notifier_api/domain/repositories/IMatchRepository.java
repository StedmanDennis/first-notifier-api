package com.first_notifier_api.domain.repositories;

import com.first_notifier_api.domain.MatchStage;
import com.first_notifier_api.domain.MatchStatus;
import com.first_notifier_api.infrastructure.entity.Match;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.ListCrudRepository;
import org.springframework.lang.NonNull;
import org.springframework.lang.Nullable;

import java.util.List;
import java.util.Set;

public interface IMatchRepository extends ListCrudRepository<Match, Long> {
    interface EventScheduleQueryResult {
        int getId();

        int getScheduleOrder();

        @NonNull
        MatchStage getStage();

        @NonNull
        MatchStatus getStatus();

        interface Alliance {
            @NonNull
            String getAllianceColor();

            interface AllianceMatchTeam {
                @NonNull
                Team getTeam();

                interface Team {
                    @Nullable
                    String getTeamNumber();
                }
            }

            @NonNull
            Set<AllianceMatchTeam> getTeams();
        }

        @NonNull
        Set<Alliance> getAlliances();

    }

    /*
     * """
     * select
     * m.id as matchId,
     * m.scheduleOrder as order,
     * m.stage as stage,
     * m.status as status,
     * ma.allianceColor as color
     * from Match m
     * join m.alliances ma
     * join ma.teams mat
     * order by m.scheduleOrder
     * """
     */
    @Query("""
            select
            m
            from Match m
            join fetch m.alliances ma
            join fetch ma.teams mat
            order by m.scheduleOrder
            """)
    List<EventScheduleQueryResult> getEventSchedule();
}
