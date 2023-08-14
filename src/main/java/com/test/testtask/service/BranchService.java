package com.test.testtask.service;

import com.test.testtask.domain.Branch;
import com.test.testtask.repository.BranchRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/*
* Сервисный уровень для работы с моделью "Филиал"
* */
@Service
public class BranchService {

    private final BranchRepository branchRepository;

    @Autowired
    public BranchService(BranchRepository branchRepository) {
        this.branchRepository = branchRepository;
    }

    /*
    * получить список филиалов по списку id организаций к которым они привязаны
    * */
    public List<Branch> findBranchesByOrganisationId(List<Long> organisationIds) {
        return branchRepository.findBranchesByOrganisationId(organisationIds);
    }

}
