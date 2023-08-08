package com.test.testtask.repository;

import com.test.testtask.domain.Organisation;

import java.util.List;
import java.util.Optional;

public interface OrganisationRepository {

    List<Organisation> findAllOrganisations();

    List<Organisation> findOrganisationsByParam(String search);

    Optional<Organisation> findOrganisation(Long id);
}
