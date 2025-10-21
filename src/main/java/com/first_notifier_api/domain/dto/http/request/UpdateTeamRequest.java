package com.first_notifier_api.domain.dto.http.request;

import org.jspecify.annotations.NonNull;
import org.jspecify.annotations.Nullable;

public record UpdateTeamRequest(@NonNull String teamNumber, @Nullable String name, @Nullable Long schoolId) {
}
