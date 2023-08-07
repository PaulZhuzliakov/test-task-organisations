package com.test.testtask.controller;

import com.test.testtask.domain.Branch;
import com.test.testtask.service.BranchService;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/branch")
public class BranchController {

    private final BranchService branchService;


    public BranchController(BranchService branchService) {
        this.branchService = branchService;
    }

    @GetMapping("/{ids}")
    public ResponseEntity<List<Branch>> getBranchesByOrganisationId(@PathVariable String ids) {
        String[] split = ids.split(",");
        Long[] idsArr = new Long[split.length];
        for (int i = 0; i < split.length; i++) {
            idsArr[i] = Long.parseLong(split[i]);
        }
        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_JSON)
                .body(branchService.findBranchesByOrganisationId(Arrays.asList(idsArr)));
    }


}
