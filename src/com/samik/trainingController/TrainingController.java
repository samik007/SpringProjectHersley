package com.samik.trainingController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TrainingController {
	
	@RequestMapping(value="/recruitments", method = RequestMethod.GET)
	public ModelAndView getRecruitments() throws Exception{
		ModelAndView model= new ModelAndView("content/placement/Recruitments");
		return model;
	}
	
	@RequestMapping(value="/summerTraining", method = RequestMethod.GET)
	public ModelAndView getSummerTraining() throws Exception{
		ModelAndView model= new ModelAndView("content/placement/SummerTraining");
		return model;
	}
	
	@RequestMapping(value="/softSkillAndTraining", method = RequestMethod.GET)
	public ModelAndView getSoftSkillAndTraining() throws Exception{
		ModelAndView model= new ModelAndView("content/placement/SoftSkillAndTraining");
		return model;
	}
}
