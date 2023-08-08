package com.test.testtask.service;

import com.test.testtask.domain.Branch;
import com.test.testtask.domain.Organisation;
import com.test.testtask.repository.OrganisationRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/*
* Сервисный уровень для работы с моделью "Организация"
* */
@Service
public class OrganisationService {

    private final OrganisationRepository organisationRepository;
    private final BranchService branchService;

    @Autowired
    public OrganisationService(OrganisationRepository organisationRepository, BranchService branchService) {
        this.organisationRepository = organisationRepository;
        this.branchService = branchService;
    }

    /**
     * получает все организации если небыло задано поисковое слово, или все организации без поискового слова,
     * затем по id полученных организаций вытаскиваются все филиалы, которые привязаны к этим id
     * */
    public List<Organisation> findOrganisations(String search) {
        List<Organisation> organisations;
        if (search == null) {
            organisations = organisationRepository.findAllOrganisations();
        } else {
            organisations = organisationRepository.findOrganisationsByParam(search);
        }

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
