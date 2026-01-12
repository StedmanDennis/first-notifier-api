package com.first_notifier_api.domain.dto.http.request;

import java.util.List;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(requiredProperties = { "updates" })
public record BatchUpdateTeamPositionsRequest(List<TeamPosition> updates) {
        @Schema(requiredProperties = { "teamNumber", "x", "y" })
        public record TeamPosition(String teamNumber, int x, int y) {
        }
}
