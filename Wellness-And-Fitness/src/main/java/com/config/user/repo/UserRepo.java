package com.config.user.repo;

import org.springframework.data.jpa.repository.JpaRepository;

import com.config.user.entity.Users;


public interface UserRepo  extends JpaRepository<Users, Integer>{
	
Users findByUsername(String username);
}
