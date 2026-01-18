package com.first_notifier_api.domain.dto.http.request;

import org.springframework.lang.NonNull;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(requiredProperties = { "matchAllianceId", "teamNumber" })
public record AssignQueuerRequest(long matchAllianceId, @NonNull String teamNumber, Long queuerId) {
}
