package com.samik.centralController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.samik.aboutController.AboutData;
import com.samik.aboutController.AboutService;
import com.samik.feedbackController.FeedbackData;
import com.samik.feedbackController.FeedbackService;

@Controller
public class CentralController {
	
	@Autowired
	private FeedbackService feedbackService;
	
	@Autowired
	private AboutService aboutService;
	
	List<FeedbackData> feedbackDataList;
	List<AboutData> aboutDataList;

	@RequestMapping(value="/Home.html", method = RequestMethod.GET)
	protected ModelAndView getHomePage(){
		ModelAndView modelAndView = new ModelAndView("content/home/Home");
		return modelAndView;
	}
	
	@RequestMapping(value="/About.html", method = RequestMethod.GET)
	protected ModelAndView getAboutPage() throws Exception{
		ModelAndView modelAndView = new ModelAndView("content/about/About");
		aboutDataList = aboutService.getAboutDetails();
		modelAndView.addObject("aboutDataList", aboutDataList);
		return modelAndView;
	}
	
	@RequestMapping(value="/NewAdmission.html", method = RequestMethod.GET)
	protected ModelAndView getServicePage() throws Exception{
		ModelAndView modelAndView = new ModelAndView("content/newAdmission/NewAdmission");
		return modelAndView;
	}
	
	@RequestMapping(value="/Admission.html", method = RequestMethod.GET)
	protected ModelAndView getOfferingPage() throws Exception{
		ModelAndView modelAndView = new ModelAndView("content/admission/Admission");
		return modelAndView;
	}
	
	@RequestMapping(value="/trainingAndPlacement.html", method = RequestMethod.GET)
	protected ModelAndView getContactPage() throws Exception{
		ModelAndView modelAndView = new ModelAndView("content/placement/trainingAndPlacement");
		return modelAndView;
	}
	
	@RequestMapping(value="/Feedback.html", method = RequestMethod.GET)
	protected ModelAndView getFeedbackPage() throws Exception{
		ModelAndView modelAndView = new ModelAndView("content/feedback/Feedback");
		feedbackDataList = feedbackService.getFeedbackDetails();
		modelAndView.addObject("feedbackDataList", feedbackDataList);
		return modelAndView;
	}
	
	@RequestMapping(value="/search.html", method = RequestMethod.GET)
	protected ModelAndView getSearchPage() throws Exception{
		ModelAndView modelAndView = new ModelAndView("content/eqpDetails/searchPage");
		return modelAndView;
	}
	@RequestMapping(value="/rest.html", method = RequestMethod.GET)
	protected ModelAndView getRestAPIPage() throws Exception{
		ModelAndView modelAndView = new ModelAndView("content/rest/restClient");
		return modelAndView;
	}
}
