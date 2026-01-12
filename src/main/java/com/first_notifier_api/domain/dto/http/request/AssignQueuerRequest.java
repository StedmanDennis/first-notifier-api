package com.first_notifier_api.domain.dto.http.request;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(requiredProperties = { "matchAllianceId", "teamNumber", "queuerId" })
public record AssignQueuerRequest(long matchAllianceId, String teamNumber, Long queuerId) {
}
