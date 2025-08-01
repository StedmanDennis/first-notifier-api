package com.first_notifier_api.infrastructure.servicies;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.first_notifier_api.domain.events.QueuerAssigned;
import com.first_notifier_api.domain.services.INotifier;
import com.first_notifier_api.domain.services.IWebPushSubscriber;
import jakarta.annotation.PostConstruct;
import nl.martijndwars.webpush.Notification;
import nl.martijndwars.webpush.PushService;
import nl.martijndwars.webpush.Subscription;
import org.bouncycastle.jce.provider.BouncyCastleProvider;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.codec.ServerSentEvent;
import org.springframework.stereotype.Service;
import reactor.core.publisher.Sinks;

import java.security.GeneralSecurityException;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
public class NotifierService implements INotifier, IWebPushSubscriber {
    final private Sinks.Many<ServerSentEvent<Object>> sink;
    @Value("${web.push.public}")
    private String webPushPublicKey;
    @Value("${web.push.private}")
    private String webPushPrivateKey;
    @Value("${web.push.mailto}")
    private String webPushMailTo;

    private PushService pushService;
    private List<Subscription> subscriptions = new ArrayList<>();


    public NotifierService()  {
        Security.addProvider(new BouncyCastleProvider());
        this.sink = Sinks.many().multicast().onBackpressureBuffer();
    }

    //note check how spring dependency injection works to figure out why properties with @Value are null during object initialization
    @PostConstruct
    private void postConstruct() throws GeneralSecurityException{
        //https://github.com/web-push-libs/web-push-php/issues/359
        this.pushService = new PushService(webPushPublicKey, webPushPrivateKey, "mailto:"+webPushMailTo);
    }

    public Sinks.Many<ServerSentEvent<Object>> getSink() {
        return sink;
    }

    @Override
    public void subscribe(Subscription subscription) {
        //presuming the endpoint is enough to uniquely identify a subscription
        if (this.subscriptions.stream().noneMatch(sub -> sub.endpoint.equals(subscription.endpoint))){
            this.subscriptions.add(subscription);
        }
    }

    @Override
    public void unsubscribe(String subscriptionEndpoint) {
        subscriptions = subscriptions.stream().filter(s -> !subscriptionEndpoint.equals(s.endpoint))
                .collect(Collectors.toList());
    }

    @Override
    public void queuerAssigned(QueuerAssigned assignment) {
        ServerSentEvent<Object> event = ServerSentEvent.builder()
                .data(
                        assignment
                )
                .build();
        sink.tryEmitNext(event);

        try {
            for (Subscription sub : subscriptions) {
                //seems to take a long time on the first send, likely encrypting
                pushService.send(new Notification(sub, new ObjectMapper().writeValueAsString(assignment)));
            }
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
