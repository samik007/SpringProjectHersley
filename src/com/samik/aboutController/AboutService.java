package com.samik.aboutController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import com.samik.DbController.CustomerJDBCTemplate;

public class AboutService {
	
	@Autowired
	private CustomerJDBCTemplate customerJDBCTemplate;
	
	public List<AboutData> getAboutDetails(){
		List<AboutData> aboutDataList = customerJDBCTemplate.getAboutDetails();
		return aboutDataList;
	}
}
