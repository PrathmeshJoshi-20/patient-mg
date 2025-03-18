package com.pm.patientservice.dto;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Size;

public class PatientRequestDTO {

    @NotBlank
    @Size(max = 100,message = "name cannot exceed more than 100 charac")
    public String name;

    @NotBlank
    @Email(message = "Email should be valid")
    public String email;
}
