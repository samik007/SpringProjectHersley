package com.samik.aboutController;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class AboutMapper implements RowMapper<AboutData>{

	@Override
	public AboutData mapRow(ResultSet rs, int rowNum) throws SQLException {
		AboutData aboutData = new AboutData();
		aboutData.setYear(rs.getInt("YEAR"));
		aboutData.setRank(rs.getInt("RANK"));
		aboutData.setPercentage(rs.getInt("PLCEMNT_PRCNTGE"));
		aboutData.setStatus(rs.getString("AUTONOMUS_STATUS"));
		aboutData.setUniversity(rs.getString("UNIVERSITY"));
		aboutData.setTotalStudent(rs.getInt("TOTALSTUDENT"));
		return aboutData;
	}
	
}
