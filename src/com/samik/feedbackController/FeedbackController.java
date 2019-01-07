package com.samik.feedbackController;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class FeedbackController {
	
	@Autowired
	private FeedbackData feedbackData;
	
	@Autowired
	private FeedbackService feedbackService;
	
	@RequestMapping(value="/feedbackSubmit", method=RequestMethod.POST)
	public String submitFeedback(@RequestParam String name, @RequestParam String email,
					@RequestParam String star, @RequestParam String comments, HttpSession session, Model model){
		feedbackData.setName(name);
		feedbackData.setEmail(email);
		feedbackData.setStar(star);
		feedbackData.setComments(comments);
		Date date = new Date();
		DateFormat dateFormat = new SimpleDateFormat("dd/mm/yyyy");
		feedbackData.setDate(dateFormat.format(date));
		
		int rowsInserted = feedbackService.insertFeedback(feedbackData);
		if(rowsInserted == 0){
			model.addAttribute("feedbackError", true);
		}else{
			model.addAttribute("feedbackSuccess", true);
		}
		return "content/Feedback";
	}
}





