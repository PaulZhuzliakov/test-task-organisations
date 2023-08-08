package com.test.testtask.controller;

import com.test.testtask.domain.Organisation;
import com.test.testtask.service.OrganisationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Контроллер для организаций
 */
@RestController
@RequestMapping("/organisation")
public class OrganisationController {

    private final OrganisationService organisationService;

    @Autowired
    public OrganisationController(OrganisationService organisationService) {
        this.organisationService = organisationService;
    }

    @GetMapping("/{id}")
    public ResponseEntity<Organisation> getOrganisations(@PathVariable Long id) {
        return ResponseEntity.of(this.organisationService.findOrganisation(id));
    }

    /*
    * получение списка всех организаций, если не был передан поисковый запрос
    * при наличии запросы получение списка организаций по запросу
    * */
    @GetMapping()
    public ResponseEntity<List<Organisation>> getOrganisations(@RequestParam(required = false) String search) {
        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_JSON)
                .body(this.organisationService.findOrganisations(search));
    }
}
