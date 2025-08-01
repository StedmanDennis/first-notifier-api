package com.first_notifier_api.domain.events;

public record QueuerAssigned(int matchOrder, String teamNumber, Long assignedQueuerId, Long previousQueuerId) implements IFirstTechNotification{
    public String getNotificationType(){
        return "queuer_assigned";
    }
}
