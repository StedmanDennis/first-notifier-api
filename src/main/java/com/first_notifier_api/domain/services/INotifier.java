package com.first_notifier_api.domain.services;

import com.first_notifier_api.domain.events.QueuerAssigned;

public interface INotifier {
    void queuerAssigned(QueuerAssigned assignment);
}

