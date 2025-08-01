package com.first_notifier_api.presentation.rest;

import com.first_notifier_api.infrastructure.servicies.NotifierService;
import nl.martijndwars.webpush.Subscription;
import org.springframework.http.ResponseEntity;
import org.springframework.http.codec.ServerSentEvent;
import org.springframework.web.bind.annotation.*;
import reactor.core.publisher.Flux;

@RestController
@RequestMapping("/api/notifications")
public class NotificationController {

    private final NotifierService notifier;

    public NotificationController(NotifierService notifier) {
        this.notifier = notifier;
    }

    @GetMapping("/serverSentEvents")
    public Flux<ServerSentEvent<Object>> sendNotification(){
        return notifier.getSink().asFlux();
    }

    @PostMapping("/webPush/subscribe")
    public ResponseEntity<Object> webPushSubscribe(@RequestBody Subscription subscription){
        notifier.subscribe(subscription);
        return ResponseEntity.noContent().build();
    }

    @DeleteMapping("/webPush/unsubscribe")
    public ResponseEntity<Object> webPushUnsubscribe(@RequestBody Subscription subscription){
        notifier.unsubscribe(subscription.endpoint);
        return ResponseEntity.noContent().build();
    }
}
