package com.first_notifier_api.infrastructure.entity;

import jakarta.persistence.*;

import java.util.Set;

@Entity
public class Team {
    @Id
    private String teamNumber;
    private String name;
    @ManyToOne(fetch = FetchType.LAZY)
    private School school;
    //one to one relationship will always be fetched
    //https://vladmihalcea.com/best-way-onetoone-optional/
    @OneToOne(mappedBy = "team", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private TeamPosition position;
    @OneToMany(mappedBy = "team", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
    private Set<MatchAllianceTeam> matchAssignments;

    public String getTeamNumber() {
        return teamNumber;
    }

    public void setTeamNumber(String teamNumber) {
        this.teamNumber = teamNumber;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public School getSchool() {
        return school;
    }

    public void setSchool(School school) {
        this.school = school;
    }

    public Set<MatchAllianceTeam> getMatchAssignments() {
        return matchAssignments;
    }

    public void setMatchAssignments(Set<MatchAllianceTeam> matchAssignments) {
        this.matchAssignments = matchAssignments;
    }
}
