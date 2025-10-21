package com.first_notifier_api.domain.repositories;

import com.first_notifier_api.infrastructure.entity.School;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.ListCrudRepository;

import java.util.List;

public interface ISchoolRepository extends ListCrudRepository<School, Long> {
    interface GetAllSchoolsQueryResult{
        long getId();
        String getName();
    }

    @Query("select s.id as id, s.name as name from School s ")
    List<GetAllSchoolsQueryResult> getAllSchools();
}
