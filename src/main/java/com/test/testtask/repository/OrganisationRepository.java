package com.test.testtask.repository;

import com.test.testtask.domain.Organisation;

import java.util.List;
import java.util.Optional;

/**
 * Репозиторий для извлечения Организаций из БД
 */
public interface OrganisationRepository {

    public List<Organisation> findAllOrganisations();

    Optional<Organisation> findOrganisation(Long id);
}
