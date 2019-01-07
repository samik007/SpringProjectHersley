package com.samik.servlet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ServletToSpringSPCall {
	
	@Autowired
	FetchFromStoredProc fetchFromStoredProc;
	
	@RequestMapping(value="/StoredProc", method=RequestMethod.GET)
	public String CallSp(){
		System.out.println("Testing");
		fetchFromStoredProc.getStudent(1002, "sanu");
		return "content/servletJsps/MyServlet";
	}
}
