package com.first_notifier_api.presentation.rest;

import com.first_notifier_api.domain.dto.http.request.AssignQueuerRequest;
import com.first_notifier_api.domain.dto.http.request.UpdateTeamRequest;
import com.first_notifier_api.domain.dto.http.response.GetScheduleResponse;
import com.first_notifier_api.domain.repositories.ISchoolRepository;
import com.first_notifier_api.domain.repositories.ITeamPositionRepository;
import com.first_notifier_api.domain.repositories.ITeamRepository;
import com.first_notifier_api.domain.services.IEventService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/event")
public class EventController {

    private final IEventService eventService;

    public EventController(IEventService scheduleService) {
        this.eventService = scheduleService;
    }

    @GetMapping("/schedule")
    public ResponseEntity<GetScheduleResponse> getSchedule(){
        var schedule = eventService.getEventSchedule();
        var responseBody = schedule.stream().map(m -> {
            var alliances = m.getAlliances().stream().map(a -> new GetScheduleResponse.Alliance(a.getAllianceColor(), a.getTeams().stream().map(t -> t.getTeam().getTeamNumber()).toList())).toList();
            return new GetScheduleResponse.Match(m.getId(), m.getScheduleOrder(), m.getStatus(), m.getStage(), alliances);
        }).toList();
        GetScheduleResponse response = new GetScheduleResponse(responseBody);
        return ResponseEntity.ok(response);
    }

    @PostMapping("/match/assign/queuer")
    public ResponseEntity<Void> assignQueuer(@RequestBody AssignQueuerRequest request){
        eventService.assignQueuerToTeam(request.matchAllianceId(), request.teamNumber(), request.queuerId());
        return ResponseEntity.noContent().build();
    }

    @GetMapping("/teams")
    public ResponseEntity<List<ITeamRepository.GetTeamsQueryResult>> getAllTeams(){
        return ResponseEntity.ok(eventService.getTeams());
    }

    @PatchMapping("/team")
    public void updateTeam(@RequestBody UpdateTeamRequest request) {
        eventService.updateTeam(request);
    }

    @DeleteMapping("/team/{teamNumber}")
    public void removeTeam(@PathVariable String teamNumber){
        eventService.removeTeam(teamNumber);
    }

    @GetMapping("/team/positions")
    public ResponseEntity<List<ITeamPositionRepository.GetTeamPositionsQueryResult>> getAllTeamPositions(){
        return ResponseEntity.ok(eventService.getTeamPositions());
    }

    @GetMapping("/schools")
    public ResponseEntity<List<ISchoolRepository.GetAllSchoolsQueryResult>> getAllSchools(){
        return ResponseEntity.ok(eventService.getAllSchools());
    }
}
