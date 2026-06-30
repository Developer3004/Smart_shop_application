package com.example.smartapplicationapp.shopservice;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.smartapplicationapp.Model.product;
import com.example.smartapplicationapp.shopRepo.productrepo;

@Service
public class productservice {

	@Autowired
	productrepo pr;
	
	
	public List<product> getallproducts() {
		return pr.findAll();
	}


	public product addcardtoproduct(int pid) {
		return pr.findById(pid).orElse(null);
	}
	
	

}
