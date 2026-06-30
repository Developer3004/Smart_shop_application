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
public class User {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	int uid;
	String name;
	String address;
	String gender;
	String email;
	String city;
	String username;
	String password;

}
