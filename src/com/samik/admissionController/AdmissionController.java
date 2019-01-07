package com.samik.admissionController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdmissionController {
	
	@RequestMapping(value="/btech", method = RequestMethod.GET)
	public ModelAndView getBtech() throws Exception{
		ModelAndView model= new ModelAndView("content/admission/btech");
		return model;
	}
	
	@RequestMapping(value="/mtech", method = RequestMethod.GET)
	public ModelAndView getMtech() throws Exception{
		ModelAndView model= new ModelAndView("content/admission/mtech");
		return model;
	}
	
	@RequestMapping(value="/mca", method = RequestMethod.GET)
	public ModelAndView getMca() throws Exception{
		ModelAndView model= new ModelAndView("content/admission/mca");
		return model;
	}
}