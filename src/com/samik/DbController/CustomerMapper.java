package com.samik.DbController;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

import com.samik.loginController.Customer;
import com.samik.loginController.RegisterCustomer;

public class CustomerMapper implements RowMapper<Customer>{

	@Override
	public Customer mapRow(ResultSet rs, int rowNum) throws SQLException {
		CustomerDetailsExtractor usExt = new CustomerDetailsExtractor();
		return usExt.extractData(rs);
	}
	
}
