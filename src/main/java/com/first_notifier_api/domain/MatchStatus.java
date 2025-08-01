package com.first_notifier_api.domain;

public enum MatchStatus {
    Pending, //match is scheduled
    Queuing, //is to be played soon and is setting up (gathering team / setting up field)
    Ready, //is ready to start
    InProgress, //has begun
    Completed, //has completed
    Canceled //was canceled
}
