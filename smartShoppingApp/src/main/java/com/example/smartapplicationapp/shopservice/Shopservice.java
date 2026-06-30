package com.example.smartapplicationapp.shopservice;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.smartapplicationapp.Model.User;
import com.example.smartapplicationapp.shopRepo.Shoprepo;

@Service
public class Shopservice {

	@Autowired
	Shoprepo r;
	public boolean registeruser(User user) {
		
		User u=r.save(user);
		if(user!=null)
		{
			return true;
		}
		return false;
	}
	public User verifylogin(String username, String password) {
		User u=r.findByUsername(username);
		if(u!=null)
		{
			if(password.equals(u.getPassword()))
		{
				return u;
			}
		}
		return null;
	}
	public User getuserById(int id) {
		User user=r.findById(id).orElse(null);
		return user;
	}
	public boolean updateProfile(User user) {
		
		User u=r.save(user);
		if(user!=null)
		{
			return true;
		}
		return false;
		
	}
	public boolean updateprofileuser(User user) {
		User u=r.save(user);
		if(u!=null)
		{
			return true;
		}
		return false;
	}
	
	
	

}
