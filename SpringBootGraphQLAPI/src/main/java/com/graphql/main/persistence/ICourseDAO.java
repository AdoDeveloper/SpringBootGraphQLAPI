package com.graphql.main.persistence;

import com.graphql.main.entities.Course;
import org.springframework.data.repository.CrudRepository;

public interface ICourseDAO extends CrudRepository<Course, Long> {
}

