package com.example.smartapplicationapp.Model;

import org.springframework.stereotype.Component;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import lombok.Data;

@Entity
@Component
@Data
public class product {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int pid;
	String productname;
	String category;
	double price;
	String imagepath;

}
