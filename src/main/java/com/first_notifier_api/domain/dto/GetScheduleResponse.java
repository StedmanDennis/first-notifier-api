package com.first_notifier_api.domain.dto;

import com.first_notifier_api.domain.MatchStage;
import com.first_notifier_api.domain.MatchStatus;

import java.util.List;

public record GetScheduleResponse(List<Match> schedule) {
    public record Match(int id, int order, MatchStatus status, MatchStage stage, List<Alliance> alliances){}
    public record Alliance(String color, List<String> teams){}
}
