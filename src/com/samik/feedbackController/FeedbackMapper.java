package com.samik.feedbackController;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.RowMapper;

public class FeedbackMapper implements RowMapper<FeedbackData>{

	@Override
	public FeedbackData mapRow(ResultSet rs, int rowNum) throws SQLException {
		FeedbackData feedbackData = new FeedbackData();
		feedbackData.setName(rs.getString("name"));
		feedbackData.setComments(rs.getString("USERCOMMENTS"));
		return feedbackData;
	}

}
