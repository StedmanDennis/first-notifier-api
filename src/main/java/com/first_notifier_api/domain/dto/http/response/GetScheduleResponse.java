package com.first_notifier_api.domain.dto.http.response;

import com.first_notifier_api.domain.MatchStage;
import com.first_notifier_api.domain.MatchStatus;

import io.swagger.v3.oas.annotations.media.Schema;

import java.util.List;

import org.springframework.lang.NonNull;

@Schema(requiredProperties = { "schedule" })
public record GetScheduleResponse(List<Match> schedule) {
    @Schema(requiredProperties = { "id", "order", "status", "stage", "alliances" })
    public record Match(int id, int order, @NonNull MatchStatus status, @NonNull MatchStage stage,
            @NonNull List<Alliance> alliances) {
    }

    @Schema(requiredProperties = { "color", "teams" })
    public record Alliance(@NonNull String color, @NonNull List<String> teams) {
    }
}
