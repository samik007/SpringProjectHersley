package com.samik.globalExceptionController;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class GlobalExceptionController {
	
	@ExceptionHandler(Exception.class)
	public ModelAndView handleAllException(Exception ex){
		ModelAndView model = new ModelAndView("error/generic_error");
		model.addObject("Errormsg","This is Exception class, please contact support");
		return model;
	}
}
