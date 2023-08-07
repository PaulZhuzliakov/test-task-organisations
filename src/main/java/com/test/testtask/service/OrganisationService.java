package com.test.testtask.service;

import com.test.testtask.domain.Organisation;
import com.test.testtask.repository.OrganisationRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

/*
* Сервисный уровень для работы с моделью "Организация"
* */
@Service
public class OrganisationService {
    private final OrganisationRepository organisationRepository;

    public OrganisationService(OrganisationRepository taskRepository) {
        this.organisationRepository = taskRepository;
    }

    public List<Organisation> findAllOrganisations() {
        List<Organisation> organisations = organisationRepository.findAllOrganisations();
        List<Long> organisationsIds = organisations.stream().map(Organisation::getId).collect(Collectors.toList());
        return null;
    }
}
