package com.samik.servlet;

import org.springframework.beans.factory.annotation.Autowired;

import com.samik.DbController.CustomerJDBCTemplate;

public class FetchFromStoredProc {
	
	@Autowired
	CustomerJDBCTemplate customerJDBCTemplate;
	
	public void getStudent(int id, String name){
		customerJDBCTemplate.insertUser(id, name); 
	}

}
