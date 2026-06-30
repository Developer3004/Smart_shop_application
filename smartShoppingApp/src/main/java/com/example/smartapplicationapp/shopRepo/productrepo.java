package com.example.smartapplicationapp.shopRepo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.smartapplicationapp.Model.product;
@Repository
public interface productrepo extends JpaRepository<product, Integer> {

	

}
