package com.config.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.config.user.entity.Users;
import com.config.user.service.UserService;

@Controller
public class HomeController {
	@Autowired
	private UserService userService;
	@Autowired
	private PasswordEncoder encoder;

	@RequestMapping("/")
	public String login() {
		return "login";
	}

	@RequestMapping("/login")
	public String loginSuccess(@RequestParam String username, @RequestParam String password, Model model) {
		Users users = userService.getUsers(username);
		if (users == null || !encoder.matches(password, users.getPassword())) {
			model.addAttribute("message", "Username/Password is Invalid");
			return "login";
		}
		model.addAttribute("users", users);
		return "home";
	}

	@RequestMapping("/addUser")
	public String addUser(Model model) {
		Users users = new Users();
		model.addAttribute("users", users);
		return "register";
	}

	@RequestMapping("/registerPage")
	public String register(@Validated Users users, BindingResult result, Model model) {
		if (result.hasErrors()) {
			return "register";
		} else if (userService.getUsers(users.getUsername()) != null) {
			model.addAttribute("message", "Username already exists");
			return "register";
		}

		userService.addUser(users);
		model.addAttribute("message", "Registration Successfull, please Login.");
		return "login";
	}
}
