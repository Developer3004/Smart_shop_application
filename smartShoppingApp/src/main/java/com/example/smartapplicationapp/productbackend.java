package com.example.smartapplicationapp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.smartapplicationapp.Model.product;
import com.example.smartapplicationapp.shopservice.productservice;

@Controller
public class productbackend {

	@Autowired
	productservice ps;
	
	List<product>addtocardproduct;
	
	public productbackend() {
		if(addtocardproduct==null) {
		addtocardproduct=new ArrayList<>();
		}
		
		
	}
	
	@GetMapping("/getproduct")
	public String getproduct(Model model)
	{
		List<product>plist=ps.getallproducts();
		model.addAttribute("products",plist);
		return "product";
	}
	
	@PostMapping("/add-to-card/{pid}")
	public String addtocard(@PathVariable int pid, RedirectAttributes redirectAttributes)
	{
		product p=ps.addcardtoproduct(pid);
		addtocardproduct.add(p);
		// addFlashAttribute safely survives a redirect and disappears on the next refresh!
	    redirectAttributes.addFlashAttribute("msg", p.getProductname() + " added Successfully");
		return "redirect:/getproduct";
	}
	@GetMapping("/cart")
	public String getcardproducts(Model model)
	{
		List<product>plist=new ArrayList<>();
		plist.addAll(addtocardproduct);
		model.addAttribute("products",plist);
		return "cart";
		
	}
	
	@PostMapping("/checkbtn")
	public String getbill(Model model)
	{
	    // Pass the main cart list directly to the model. 
	    // No blist, no addAll(), no duplicates!
	    model.addAttribute("products", addtocardproduct);
	    
	    return "bill";
	}
	
	@GetMapping("/deleteproduct/{pid}")
	public String removeproduct(@PathVariable int pid ,RedirectAttributes redirectAttributes )
	{
		addtocardproduct.removeIf(pro->pro.getPid()==pid);
		
		redirectAttributes.addFlashAttribute("msg",  " Removed Successfully");
		return "redirect:/cart";
		
		
	}
	

	
	
}
