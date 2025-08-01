package com.first_notifier_api.domain.events;

public record MatchQueuing(int matchOrder) implements IFirstTechNotification {
    public String getNotificationType() {
        return "match_queuing";
    }
}
