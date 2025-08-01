package com.first_notifier_api.domain.repositories;

import com.first_notifier_api.infrastructure.entity.MatchAllianceTeam;
import com.first_notifier_api.infrastructure.entity.idclass.MatchAllianceTeamId;
import org.springframework.data.repository.ListCrudRepository;

public interface IMatchAllianceTeamRepository extends ListCrudRepository<MatchAllianceTeam, MatchAllianceTeamId> {
}
