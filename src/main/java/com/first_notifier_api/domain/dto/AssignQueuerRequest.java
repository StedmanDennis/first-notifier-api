package com.first_notifier_api.domain.dto;

public record AssignQueuerRequest(long matchAllianceId, String teamNumber, Long queuerId) {
}
