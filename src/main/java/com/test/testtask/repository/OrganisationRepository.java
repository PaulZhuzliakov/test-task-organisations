package com.test.testtask.repository;

import com.test.testtask.domain.Organisation;

import java.util.List;

/**
 * Репозиторий для извлечения Организаций из БД
 */
public interface OrganisationRepository {

    public List<Organisation> findAllOrganisations();
}
