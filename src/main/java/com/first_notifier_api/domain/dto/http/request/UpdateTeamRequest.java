package com.first_notifier_api.domain.dto.http.request;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(requiredProperties = { "teamNumber" })
public record UpdateTeamRequest(String teamNumber, String name, Long schoolId) {
}
