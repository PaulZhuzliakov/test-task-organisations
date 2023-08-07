package com.test.testtask.repository;

import com.test.testtask.domain.Branch;

import java.util.List;

public interface BranchRepository {

    public List<Branch> findBranchesByOrganisationId(Long organisationId);
}
