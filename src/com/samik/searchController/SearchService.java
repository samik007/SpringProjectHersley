package com.samik.searchController;

import org.springframework.beans.factory.annotation.Autowired;

import com.samik.DbController.CustomerJDBCTemplate;

public class SearchService {

	@Autowired
	General general;
	
	@Autowired
	private CustomerJDBCTemplate customerJDBCTemplate;
	
	public General getGeneralDetails(String unit){
		general = customerJDBCTemplate.getGeneralDetails(unit);
		return general;
	}
	
	public int updateGeneralDetails(General general){
		int rowsUpdated = customerJDBCTemplate.updateGeneralDetails(general);
		return rowsUpdated;
	}
}
