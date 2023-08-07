package com.test.testtask.controller;

import com.test.testtask.domain.Organisation;
import com.test.testtask.service.OrganisationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * Контроллер для организаций
 */
@RestController
@RequestMapping("/organisation")
public class OrganisationController {

    /**
     * Репозиторий организаций
     * */
    private final OrganisationService organisationService;

    @Autowired
    public OrganisationController(OrganisationService organisationService) {
        this.organisationService = organisationService;
    }

    @GetMapping("/{id}")
    public ResponseEntity<Organisation> getOrganisations(@PathVariable Long id) {
        return ResponseEntity.of(this.organisationService.findOrganisation(id));
    }

    @GetMapping
    public ResponseEntity<List<Organisation>> getAllOrganisations() {
        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_JSON)
                .body(this.organisationService.findAllOrganisations());
    }

}
