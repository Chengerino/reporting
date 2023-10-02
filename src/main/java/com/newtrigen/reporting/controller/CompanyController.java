package com.newtrigen.reporting.controller;

import com.newtrigen.reporting.service.CompanyService;
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
        System.out.println("hello");
        System.out.println("world");

        companyService.createCompany();
    }

}
