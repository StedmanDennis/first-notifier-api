package com.first_notifier_api.infrastructure.entity;

import jakarta.persistence.*;

import java.util.Set;

@Entity
public class Queuer {
    @Id
    private Long id;
    private String name;
    @OneToMany(mappedBy = "assignedQueuer", fetch = FetchType.LAZY)
    private Set<MatchAllianceTeam> assignments;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<MatchAllianceTeam> getAssignments() {
        return assignments;
    }

    public void setAssignments(Set<MatchAllianceTeam> assignments) {
        this.assignments = assignments;
    }
}
