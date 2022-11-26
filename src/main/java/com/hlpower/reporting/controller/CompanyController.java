package com.hlpower.reporting.controller;

import com.hlpower.reporting.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Controller
public class CompanyController {

    @Autowired
    private CompanyService companyService;

    @GetMapping(value = "/testing")
    public void createCompany() {
        companyService.createCompany();
    }

}
