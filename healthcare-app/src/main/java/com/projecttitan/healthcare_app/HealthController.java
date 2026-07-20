package com.projecttitan.healthcare_app.controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HealthController {

    @GetMapping("/health")
    public String health() {
        return "Project Titan Healthcare API V1 is running sucessfully!";
    }
}