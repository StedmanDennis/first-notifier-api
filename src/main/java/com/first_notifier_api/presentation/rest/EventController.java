package com.first_notifier_api.presentation.rest;

import com.first_notifier_api.domain.dto.AssignQueuerRequest;
import com.first_notifier_api.domain.dto.GetScheduleResponse;
import com.first_notifier_api.domain.repositories.ITeamRepository;
import com.first_notifier_api.domain.services.IEventService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/event")
public class EventController {

    private final IEventService scheduleService;

    public EventController(IEventService scheduleService) {
        this.scheduleService = scheduleService;
    }

    @GetMapping("/schedule")
    public ResponseEntity<GetScheduleResponse> getSchedule(){
        var schedule = scheduleService.getEventSchedule();
        var responseBody = schedule.stream().map(m -> {
            var alliances = m.getAlliances().stream().map(a -> new GetScheduleResponse.Alliance(a.getAllianceColor(), a.getTeams().stream().map(t -> t.getTeam().getTeamNumber()).toList())).toList();
            return new GetScheduleResponse.Match(m.getId(), m.getScheduleOrder(), m.getStatus(), m.getStage(), alliances);
        }).toList();
        GetScheduleResponse response = new GetScheduleResponse(responseBody);
        return ResponseEntity.ok(response);
    }

    @PostMapping("/match/assign/queuer")
    public ResponseEntity<Void> assignQueuer(@RequestBody AssignQueuerRequest requestBody){
        scheduleService.assignQueuerToTeam(requestBody.matchAllianceId(), requestBody.teamNumber(), requestBody.queuerId());
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/teams")
    public ResponseEntity<List<ITeamRepository.GetTeamsQueryResult>> getAllTeams(){
        return ResponseEntity.ok(scheduleService.getTeams());
    }

    @GetMapping("/team/positions")
    public ResponseEntity<List<ITeamRepository.GetTeamPositionsQueryResult>> getAllTeamPositions(){
        return ResponseEntity.ok(scheduleService.getTeamPositions());
    }
}
