package com.example.smartapplicationapp;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class appcontroller {
	
	@GetMapping("/")
	public String getindexpage(Model model) {
	    return "index"; // Ensure this matches your index.jsp file name exactly
	}
	
	@GetMapping("/register")
	public String getregisterpage()
	{
		return "register";
	}
	
	@GetMapping("/login")
	public String getloginpage()
	{
		return "login";
	}
	
	
	

}

