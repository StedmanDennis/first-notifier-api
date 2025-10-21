package com.first_notifier_api.domain.dto.http.request;

public record AssignQueuerRequest(long matchAllianceId, String teamNumber, Long queuerId) {
}
