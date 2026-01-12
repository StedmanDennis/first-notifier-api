package com.first_notifier_api.domain.dto.http.response;

import com.first_notifier_api.domain.MatchStage;
import com.first_notifier_api.domain.MatchStatus;

import io.swagger.v3.oas.annotations.media.Schema;

import java.util.List;

@Schema(requiredProperties = { "schedule" })
public record GetScheduleResponse(List<Match> schedule) {
    @Schema(requiredProperties = { "id", "order", "status", "stage", "alliances" })
    public record Match(int id, int order, MatchStatus status, MatchStage stage, List<Alliance> alliances) {
    }

    @Schema(requiredProperties = { "color", "teams" })
    public record Alliance(String color, List<String> teams) {
    }
}
