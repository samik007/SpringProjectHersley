package com.samik.ajaxController;

import org.springframework.beans.factory.annotation.Autowired;

import com.samik.DbController.CustomerJDBCTemplate;

public class OfficialInfoService {
	
	@Autowired
	private CustomerJDBCTemplate customerJDBCTemplate;
	
	@Autowired
	OfficialData officialData;
	
	public OfficialData getOfficialInfo(String post){
		officialData = customerJDBCTemplate.getOfficialInformation(post);
		return officialData;
	}
}
