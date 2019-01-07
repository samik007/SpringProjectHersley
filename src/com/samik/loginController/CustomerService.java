package com.samik.loginController;

import org.springframework.beans.factory.annotation.Autowired;

import com.samik.DbController.CustomerJDBCTemplate;

public class CustomerService {
	
	@Autowired
	private CustomerJDBCTemplate customerJDBCTemplate;
	
	@Autowired
	private Customer customer;
	
	public Customer loginCustomer(String userId, String password){		
		customer = customerJDBCTemplate.getCustomer(userId, password);
		if(null != customer){
			if(customer.getUserId().equals(userId) && customer.getPassword().equals(password)){
				return customer;
			}			
		}
		return null;
	}
	
	public int registerCustoner(RegisterCustomer registerCustomer){
		int rowsInserted = customerJDBCTemplate.insertNewUser(registerCustomer);
		return rowsInserted;
	}
}
