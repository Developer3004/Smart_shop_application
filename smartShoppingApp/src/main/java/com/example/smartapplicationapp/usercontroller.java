package com.example.smartapplicationapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.smartapplicationapp.Model.User;
import com.example.smartapplicationapp.shopservice.Shopservice;

import jakarta.servlet.http.HttpSession;

@Controller
public class usercontroller {

	@Autowired
	Shopservice s;

	@PostMapping("/loginUser")
	public String verfilogin(String username, String password, Model model, HttpSession session) {
		User islogin = s.verifylogin(username, password);
		if (islogin != null) {
			session.setAttribute("loggesuserId", islogin.getUid());
			return "redirect:/getproduct";

		}
		return "register";
	}

	@PostMapping("/getregister")
	public String registeruser(@ModelAttribute User user) {
		boolean isregister = s.registeruser(user);
		if (isregister) {
			return "login";
		}
		return "register";
	}

	@GetMapping("/profile")
	public String getprofilrpage(Model model, HttpSession session) {
		Object objId = session.getAttribute("loggesuserId");
		if (objId != null) {
			int id = (int) objId;
			User u = s.getuserById(id);
			model.addAttribute("user", u);
			return "profile";

		}
		return "login";
	}

	@GetMapping("/logout")
	public String getloginpage(HttpSession session) {
		session.invalidate();
		return "index";
	}

	@GetMapping("/update")
	public String getupdateprofile(Model model, HttpSession session) {
		Object objid = session.getAttribute("loggesuserId");

		int id = (int) objid;
		User u = s.getuserById(id);
		model.addAttribute("user", u);
		return "updateprofile";

	}

	@PostMapping("/updateProfile")
	public String updateProfile(@ModelAttribute User user, Model model) {
		boolean isupdated = s.updateprofileuser(user);
		if (isupdated) {
			model.addAttribute("msg", "Updated successfully");
			return "updateprofile";
		}
		model.addAttribute("msg", "Failed");
		return "updateProfile";

	}
}

