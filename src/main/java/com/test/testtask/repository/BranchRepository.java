package com.test.testtask.repository;

import com.test.testtask.domain.Branch;

import java.util.List;

public interface BranchRepository {

    List<Branch> findBranchesByOrganisationId(List<Long> organisationId);
}
