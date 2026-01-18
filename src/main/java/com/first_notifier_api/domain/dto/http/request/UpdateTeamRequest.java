package com.first_notifier_api.domain.dto.http.request;

import org.springframework.lang.NonNull;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(requiredProperties = { "teamNumber" })
public record UpdateTeamRequest(@NonNull String teamNumber, String name, Long schoolId) {
}
