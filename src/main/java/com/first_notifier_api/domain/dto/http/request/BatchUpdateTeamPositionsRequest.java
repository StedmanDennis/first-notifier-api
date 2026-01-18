package com.first_notifier_api.domain.dto.http.request;

import java.util.List;

import org.springframework.lang.NonNull;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(requiredProperties = { "updates" })
public record BatchUpdateTeamPositionsRequest(@NonNull List<TeamPosition> updates) {
        @Schema(requiredProperties = { "teamNumber", "x", "y" })
        public record TeamPosition(@NonNull String teamNumber, int x, int y) {
        }
}
