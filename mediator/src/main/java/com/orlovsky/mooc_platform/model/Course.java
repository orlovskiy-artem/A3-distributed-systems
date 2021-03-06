package com.orlovsky.mooc_platform.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Course {
    private UUID id;
    private String title;
    private String description;
    List<Author> authors = new ArrayList<>();
    List<Student> students = new ArrayList<>();
    private int duration;
    private CourseStatus status;
    private List<EducationalStep> educationalSteps = new ArrayList<>();
    private List<TestStep> testSteps = new ArrayList<>();
    private int numberOfSteps;
    private long price;
}
