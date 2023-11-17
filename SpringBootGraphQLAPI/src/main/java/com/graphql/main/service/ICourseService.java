package com.graphql.main.service;

import com.graphql.main.entities.Course;

import java.util.List;

public interface ICourseService {

    Course findById(Long id);

    List<Course> findAll();

    void createCourse(Course course);

    void deleteById(Long id);
}
