package com.first_notifier_api.domain.services;

import nl.martijndwars.webpush.Subscription;

public interface IWebPushSubscriber {
    void subscribe(Subscription subscription);
    void unsubscribe(String subscriptionEndpoint);
}
