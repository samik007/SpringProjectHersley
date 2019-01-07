package com.samik.DbController;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.ResultSetExtractor;

import com.samik.loginController.Customer;

public class CustomerDetailsExtractor implements ResultSetExtractor<Customer>{
	
	@Override
	public Customer extractData(ResultSet rs) throws SQLException,
			DataAccessException {
		Customer customer = new Customer();
		
		customer.setUserId(rs.getString("userid"));
		customer.setPassword(rs.getString("password"));
		return customer;
	}
}
