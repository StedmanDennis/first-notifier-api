package com.first_notifier_api.infrastructure.entity;

import com.first_notifier_api.infrastructure.entity.idclass.MatchAllianceTeamId;
import jakarta.persistence.*;

@Entity
@IdClass(MatchAllianceTeamId.class)
public class MatchAllianceTeam {
    @Id
    @ManyToOne(fetch = FetchType.LAZY)
    private MatchAlliance matchAlliance;
    @Id
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "team_number")
    private Team team;
    @ManyToOne(fetch = FetchType.LAZY)
    private Queuer assignedQueuer;

    public MatchAlliance getMatchAlliance() {
        return matchAlliance;
    }

    public void setMatchAlliance(MatchAlliance matchAlliance) {
        this.matchAlliance = matchAlliance;
    }

    public Team getTeam() {
        return team;
    }

    public void setTeam(Team team) {
        this.team = team;
    }

    public Queuer getAssignedQueuer() {
        return assignedQueuer;
    }

    public void setAssignedQueuer(Queuer assignedQueuer) {
        this.assignedQueuer = assignedQueuer;
    }
}

