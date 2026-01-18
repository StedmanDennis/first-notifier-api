package com.first_notifier_api.domain.dto.http.response;

import java.util.List;

import org.springframework.lang.NonNull;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(requiredProperties = { "teams" })
public record GetTeamsResponse(@NonNull List<Team> teams) {
    @Schema(requiredProperties = { "teamNumber", "name", "schoolId" })
    record Team(@NonNull String teamNumber, @NonNull String name, int schoolId) {
    }
}
