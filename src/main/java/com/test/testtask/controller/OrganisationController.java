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

    /**
     * Репозиторий организаций
     * */
    @Autowired
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
                .body(this.organisationService.findOrganisations());
    }

    @GetMapping("/search")
    public ResponseEntity<List<Organisation>> getOrganisationsByParam(@RequestParam String search) {
        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_JSON)
                .body(this.organisationService.findOrganisationsByParam(search));
    }
}
