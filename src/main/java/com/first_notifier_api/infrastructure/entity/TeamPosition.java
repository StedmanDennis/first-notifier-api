package com.first_notifier_api.infrastructure.entity;

import jakarta.persistence.*;

@Entity
public class TeamPosition {
    @Id
    String teamNumber;
    @MapsId
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "team_number")
    private Team team;
    private int x;
    private int y;

    public Team getTeam() {
        return team;
    }

    public void setTeam(Team team) {
        this.team = team;
    }

    public int getX() {
        return x;
    }

    public void setX(int x) {
        this.x = x;
    }

    public int getY() {
        return y;
    }

    public void setY(int y) {
        this.y = y;
    }
}
