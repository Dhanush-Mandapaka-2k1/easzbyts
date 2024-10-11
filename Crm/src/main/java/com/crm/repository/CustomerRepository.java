package com.crm.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import com.crm.entity.Customer;

@Component
public interface CustomerRepository extends JpaRepository<Customer, Integer> {
	List<Customer> findByFirstnameIgnoreCaseLike(String firstname);
	List<Customer> findByLastnameIgnoreCaseLike(String lastname);
}
