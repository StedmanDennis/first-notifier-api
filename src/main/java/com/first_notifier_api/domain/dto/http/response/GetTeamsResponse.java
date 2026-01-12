package com.first_notifier_api.domain.dto.http.response;

import java.util.List;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(requiredProperties = { "teams" })
public record GetTeamsResponse(List<Team> teams) {
    @Schema(requiredProperties = { "teamNumber", "name", "schoolId" })
    record Team(String teamNumber, String name, int schoolId) {
    }
}
