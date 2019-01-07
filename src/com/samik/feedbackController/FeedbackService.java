package com.samik.feedbackController;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.samik.DbController.CustomerJDBCTemplate;

public class FeedbackService {
	
	@Autowired
	private CustomerJDBCTemplate customerJDBCTemplate;

	public int insertFeedback(FeedbackData feedbackData){
		int rowsInserted = customerJDBCTemplate.insertfeedback(feedbackData); 
		return rowsInserted;
	}
	
	public List<FeedbackData> getFeedbackDetails(){
		List<FeedbackData> feedbackData = customerJDBCTemplate.getFeedbackDetails(); 
		return feedbackData;
	}
}
