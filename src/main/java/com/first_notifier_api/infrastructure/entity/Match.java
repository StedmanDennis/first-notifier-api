package com.first_notifier_api.infrastructure.entity;

import com.first_notifier_api.domain.MatchStage;
import com.first_notifier_api.domain.MatchStatus;
import jakarta.persistence.*;

import java.util.Set;

@Entity
public class Match {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private Long id;
    private Integer scheduleOrder;
    private Integer fieldNumber;
    private MatchStage stage;
    private MatchStatus status;
    @OneToMany(mappedBy = "match", fetch = FetchType.LAZY)
    private Set<MatchAlliance> alliances;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Integer getScheduleOrder() {
        return scheduleOrder;
    }

    public void setScheduleOrder(Integer scheduleOrder) {
        this.scheduleOrder = scheduleOrder;
    }

    public Integer getFieldNumber() {
        return fieldNumber;
    }

    public void setFieldNumber(Integer fieldNumber) {
        this.fieldNumber = fieldNumber;
    }

    public MatchStage getStage() {
        return stage;
    }

    public void setStage(MatchStage stage) {
        this.stage = stage;
    }

    public MatchStatus getStatus() {
        return status;
    }

    public void setStatus(MatchStatus status) {
        this.status = status;
    }

    public Set<MatchAlliance> getAlliances() {
        return alliances;
    }

    public void setAlliances(Set<MatchAlliance> alliances) {
        this.alliances = alliances;
    }
}
