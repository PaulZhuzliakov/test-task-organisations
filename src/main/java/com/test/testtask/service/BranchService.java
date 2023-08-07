package com.test.testtask.service;

import com.test.testtask.domain.Branch;
import com.test.testtask.repository.BranchRepository;
import org.springframework.stereotype.Service;

import java.util.List;

/*
* Сервисный уровень для работы с моделью "Филиал"
* */
@Service
public class BranchService {

    private final BranchRepository branchRepository;

    public BranchService(BranchRepository branchRepository) {
        this.branchRepository = branchRepository;
    }

    public List<Branch> findBranchesByOrganisationId(Long organisationId) {
        return branchRepository.findBranchesByOrganisationId(organisationId);
    }

}
