package com.first_notifier_api.domain.repositories;

import com.first_notifier_api.domain.MatchStage;
import com.first_notifier_api.domain.MatchStatus;
import com.first_notifier_api.infrastructure.entity.Match;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.ListCrudRepository;

import java.util.List;
import java.util.Set;

public interface IMatchRepository extends ListCrudRepository<Match, Long> {
    interface EventScheduleQueryResult {
        int getId();
        int getScheduleOrder();
        MatchStage getStage();
        MatchStatus getStatus();
        interface Alliance {
            String getAllianceColor();
            interface AllianceMatchTeam {
                Team getTeam();
                interface Team{
                    String getTeamNumber();
                }
            }
            Set<AllianceMatchTeam> getTeams();
        }
        Set<Alliance> getAlliances();

    }

    /*
    """
            select
            m.id as matchId,
            m.scheduleOrder as order,
            m.stage as stage,
            m.status as status,
            ma.allianceColor as color
            from Match m
            join m.alliances ma
            join ma.teams mat
            order by m.scheduleOrder
            """
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
