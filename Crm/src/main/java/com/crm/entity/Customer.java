package com.crm.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
public class Customer {
	@Id
	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "customerid")
	@SequenceGenerator(allocationSize = 1, initialValue = 1, name = "customerid", sequenceName = "customer_sequence")
	private int Userid;
	private String firstname;
	private String lastname;
	private int age;
	private String emailid;
	private String phno;
	private String address;
}
