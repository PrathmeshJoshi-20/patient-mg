package com.pm.patientservice.service;

import com.pm.patientservice.dto.PatientRequestDTO;
import com.pm.patientservice.dto.PatientResponseDTO;
import com.pm.patientservice.exception.EmailAlreadyExistsException;
import com.pm.patientservice.exception.PatientNotFoundException;
import com.pm.patientservice.mapper.PatientMapper;
import com.pm.patientservice.model.Patient;
import com.pm.patientservice.repository.PatientRepository;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.UUID;

@Service
public class PatientService {
    private PatientRepository patientRepository;

    public PatientService(PatientRepository patientRepository) {
        this.patientRepository = patientRepository;
    }

    public List<PatientResponseDTO> getPatients(){
        List<Patient> patientList = patientRepository.findAll();
        //  List<PatientResponseDTO> patientResponseDTOS = patientList.stream()
        //                .map(eachPatient -> PatientMapper.toDto(eachPatient)).toList();
        return patientList.stream()
                .map(PatientMapper::toDto).toList();
    }

    public PatientResponseDTO createPatient(PatientRequestDTO patientRequestDTO){

        if(patientRepository.existsByEmail(patientRequestDTO.getEmail())){
            throw new EmailAlreadyExistsException("A patient is already associated with the email" +
                    patientRequestDTO.getEmail());
        }
        Patient newPatient = patientRepository.save(PatientMapper.toModel(patientRequestDTO));
        return PatientMapper.toDto(newPatient);
    }

    public PatientResponseDTO updatePatient(UUID id,PatientRequestDTO patientRequestDTO){
        Patient patientToBeUpdated = patientRepository.findById(id)
                .orElseThrow(()-> new PatientNotFoundException("Patient not found for id -",id));
        if(patientRepository.existsByEmail(patientRequestDTO.getEmail())){
            throw new EmailAlreadyExistsException("A patient is already associated with the email" +
                    patientRequestDTO.getEmail());
        }
        patientToBeUpdated.setName(patientRequestDTO.getName());
        patientToBeUpdated.setAddress(patientRequestDTO.getAddress());
        patientToBeUpdated.setEmail(patientRequestDTO.getEmail());
        patientToBeUpdated.setPhone(patientRequestDTO.getPhone());
        patientToBeUpdated.setDateOfBirth(LocalDate.parse(patientRequestDTO.getDateOfBirth()));

        Patient updatedPatient = patientRepository.save(patientToBeUpdated);
        return PatientMapper.toDto(updatedPatient);
    }
}
