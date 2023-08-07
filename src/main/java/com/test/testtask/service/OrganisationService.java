package com.test.testtask.service;

import com.fasterxml.jackson.databind.util.TypeKey;
import com.test.testtask.domain.Branch;
import com.test.testtask.domain.Organisation;
import com.test.testtask.repository.BranchRepository;
import com.test.testtask.repository.OrganisationRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
    private final BranchService branchService;

    @Autowired
    public OrganisationService(OrganisationRepository organisationRepository, BranchService branchService) {
        this.organisationRepository = organisationRepository;
        this.branchService = branchService;
    }

    /**
     * олучает все организации, по id организаций вытаскиваются все филиалы, которые привязаны к этим id,
     * к каждой организации добавляется список её филиалов
     * */
    public List<Organisation> findAllOrganisations() {
        List<Organisation> organisations = organisationRepository.findAllOrganisations();
        List<Long> organisationsIds = organisations.stream().map(Organisation::getId).collect(Collectors.toList());
        List<Branch> branches = branchService.findBranchesByOrganisationId(organisationsIds);

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
        }
        return organisations;
    }

    /*
    * получить организацию по id
    * */
    public Optional<Organisation> findOrganisation(Long id) {
        Optional<Organisation> organisation = organisationRepository.findOrganisation(id);
        if (organisation.isPresent()) {
            List<Long> organisationsIds = new ArrayList<>();
            organisationsIds.add(organisation.get().id);
            List<Branch> branchList = branchService.findBranchesByOrganisationId(organisationsIds);
            organisation.get().setBranches(branchList);
        }
        return organisation;
    }
}
