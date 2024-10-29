package com.config.user.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.config.user.entity.Users;
import com.config.user.repo.UserRepo;

@Service
public class UserService {
	@Autowired
	private UserRepo repo;
	@Autowired
	private PasswordEncoder encoder;
	public Users getUsers(String username) {
		Users users = repo.findByUsername(username);
		return users;
	}

	public void addUser(Users users) {
		users.setPassword(encoder.encode(users.getPassword()));
		repo.save(users);
	}

	public Users getuser(int id) {
		return repo.findById(id).get();
	}
}
