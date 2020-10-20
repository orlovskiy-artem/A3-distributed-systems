package com.orlovsky.mooc_platform.model;

import com.fasterxml.jackson.annotation.JsonBackReference;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.net.URI;
import java.util.List;
import java.util.UUID;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class EducationalStep implements Step {
    private UUID id;
    @JsonBackReference
    private Course course;
    private URI eduMaterialUri;
    private int position;
    private List<StudentProgressItem> studentProgressItems;
}

