package com.example.smartapplicationapp; // Ensure this is your correct base package

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"com.example.smartapplicationapp"}) 
public class SmartShoppingAppApplication {
    public static void main(String[] args) {
        SpringApplication.run(SmartShoppingAppApplication.class, args);
    }
}