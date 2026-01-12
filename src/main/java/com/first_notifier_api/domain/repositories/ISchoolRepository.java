package com.first_notifier_api.domain.repositories;

import com.first_notifier_api.infrastructure.entity.School;

import io.swagger.v3.oas.annotations.media.Schema;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.ListCrudRepository;

import java.util.List;

public interface ISchoolRepository extends ListCrudRepository<School, Long> {
    // TODO remove @Schema annotations from respository, create a dto in
    // dto.http.response that is mapped from the query result
    @Schema(requiredProperties = { "id", "name" })
    interface GetAllSchoolsQueryResult {
        long getId();

        String getName();
    }

    @Query("select s.id as id, s.name as name from School s ")
    List<GetAllSchoolsQueryResult> getAllSchools();
}
