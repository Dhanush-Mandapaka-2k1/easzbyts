package com.crm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.crm.entity.Customer;
import com.crm.service.CustomerService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class HomeController {
	@Autowired
	private CustomerService service;
	

	

	@RequestMapping("/")
	public String home(Model model) {
		List<Customer> customers = service.customers();
		model.addAttribute("customers", customers);
		return "customer_Home";
	}

	@RequestMapping("/addCustomer")
	public String addCustomer(Model model) {
		Customer customer = new Customer();
		model.addAttribute("customer", customer);
		return "add_Customer";
	}

	@RequestMapping("/insertCustomer")
	public String insertCustomer(@ModelAttribute Customer customer) {
		service.addCustomer(customer);
		return "redirect:/";
	}

	@RequestMapping("/updateCustomer")
	public String updateCustomer(Model model, HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("Customerid"));
		Customer customer = service.customer(id);
		model.addAttribute("customer", customer);
		return "EditCustomer";
	}

	@RequestMapping("/update")
	public String editCustomer(@ModelAttribute Customer customer) {
		service.addCustomer(customer);
		return "redirect:/";
	}

	@RequestMapping("/deleteCustomer")
	public String deleteCustomer(HttpServletRequest request) {
		int id = Integer.parseInt(request.getParameter("Customerid"));
		service.deleteCustomer(id);
		return "redirect:/";
	}

	@RequestMapping("/getByFirstName")
	public String getByFirstName(Model model, HttpServletRequest request) {
		String name = request.getParameter("byFirstName");
		List<Customer> customers = service.getByFirstName(name);
		model.addAttribute("customers", customers);
		return "customer_Home";
	}
	@RequestMapping("/getByLastName")
	public String getByLastName(Model model, HttpServletRequest request) {
		String name = request.getParameter("byLastName");
		List<Customer> customers = service.getByLastName(name);
		model.addAttribute("customers", customers);
		return "customer_Home";
	}
}
