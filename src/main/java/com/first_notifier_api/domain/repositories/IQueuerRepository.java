package com.first_notifier_api.domain.repositories;

import com.first_notifier_api.infrastructure.entity.Queuer;
import org.springframework.data.repository.ListCrudRepository;

public interface IQueuerRepository extends ListCrudRepository<Queuer, Long> {
}
