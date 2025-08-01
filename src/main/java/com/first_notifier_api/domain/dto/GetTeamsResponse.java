package com.first_notifier_api.domain.dto;

import java.util.List;

public record GetTeamsResponse(List<Team> teams) {
    record Team(String teamNumber, String name, int schoolId){}
}
