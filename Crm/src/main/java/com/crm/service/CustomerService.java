package com.crm.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.crm.entity.Customer;
import com.crm.repository.CustomerRepository;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository repository;

	public List<Customer> customers() {
		return repository.findAll();
	}

	public Customer customer(int id) {
		return repository.findById(id).get();
	}

	public void addCustomer(Customer customer) {
		repository.save(customer);
	}

	public void deleteCustomer(int id) {
		repository.deleteById(id);
	}

	public List<Customer> getByFirstName(String name) {
		return repository.findByFirstnameIgnoreCaseLike("%" + name + "%");
	}

	public List<Customer> getByLastName(String name) {
		return repository.findByLastnameIgnoreCaseLike("%" + name + "%");
	}
}
