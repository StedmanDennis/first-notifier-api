package com.first_notifier_api.infrastructure.entity.idclass;

import java.io.Serializable;
import java.util.Objects;

public class MatchAllianceTeamId implements Serializable {
    public Long matchAlliance;
    public String team;

    public MatchAllianceTeamId() {
    }

    public MatchAllianceTeamId(Long matchAlliance, String team) {
        this.matchAlliance = matchAlliance;
        this.team = team;
    }

    public String getTeam() {
        return team;
    }

    public void setTeamNumber(String team) {
        this.team = team;
    }

    public Long getMatchAlliance() {
        return matchAlliance;
    }

    public void setMatchAllianceId(Long matchAlliance) {
        this.matchAlliance = matchAlliance;
    }

    @Override
    public boolean equals(Object o) {
        if (!(o instanceof MatchAllianceTeamId that)) return false;
        return Objects.equals(matchAlliance, that.matchAlliance) && Objects.equals(team, that.team);
    }

    @Override
    public int hashCode() {
        return Objects.hash(matchAlliance, team);
    }
}
