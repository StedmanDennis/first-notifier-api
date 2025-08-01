package com.first_notifier_api.infrastructure.entity;

import jakarta.persistence.*;

import java.util.Set;

@Entity
public class MatchAlliance {
    @Id
    private Long id;
    //TODO figure out how to put an index on this column
    @ManyToOne(fetch = FetchType.LAZY)
    private Match match;
    @OneToMany(mappedBy = "matchAlliance", fetch = FetchType.LAZY)
    private Set<MatchAllianceTeam> teams;
    private String allianceColor;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Match getMatch() {
        return match;
    }

    public void setMatch(Match match) {
        this.match = match;
    }

    public Set<MatchAllianceTeam> getTeams() {
        return teams;
    }

    public void setTeams(Set<MatchAllianceTeam> teams) {
        this.teams = teams;
    }

    public String getAllianceColor() {
        return allianceColor;
    }

    public void setAllianceColor(String allianceColor) {
        this.allianceColor = allianceColor;
    }
}
