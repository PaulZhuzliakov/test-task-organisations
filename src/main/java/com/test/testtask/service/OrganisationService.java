package com.test.testtask.service;

import com.fasterxml.jackson.databind.util.TypeKey;
import com.test.testtask.domain.Branch;
import com.test.testtask.domain.Organisation;
import com.test.testtask.repository.BranchRepository;
import com.test.testtask.repository.OrganisationRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

/*
* Сервисный уровень для работы с моделью "Организация"
* */
@Service
public class OrganisationService {

    Logger logger = LoggerFactory.getLogger(OrganisationService.class);

    private final OrganisationRepository organisationRepository;
    private final BranchRepository branchRepository;

    public OrganisationService(OrganisationRepository organisationRepository, BranchRepository branchRepository) {
        this.organisationRepository = organisationRepository;
        this.branchRepository = branchRepository;
    }


    public List<Organisation> findAllOrganisations() {
        List<Organisation> organisations = organisationRepository.findAllOrganisations();
        List<Long> organisationsIds = organisations.stream().map(Organisation::getId).collect(Collectors.toList());
        List<Branch> branches = branchRepository.findBranchesByOrganisationId(organisationsIds);


        HashMap<Long, ArrayList<Branch>> map = new HashMap<>();

        for (Branch b: branches) {
            if (map.containsKey(b.organisationId)) {
                map.get(b.organisationId).add(b);
            } else {
                ArrayList<Branch> branchList = new ArrayList<>();
                branchList.add(b);
                map.put(b.organisationId, branchList);
            }
        }

        for(Map.Entry<Long, ArrayList<Branch>> entry : map.entrySet() ){
            logger.info(entry.getKey() + " = " + entry.getValue());
        }



        for (Organisation o: organisations) {
            o.setBranches(map.get(o.id));
//            o.setBranches(branches);
        }
        return organisations;
    }
}
