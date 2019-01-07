package com.samik.ajaxController;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class OfficialInfoMapper implements RowMapper<OfficialData>{

	@Override
	public OfficialData mapRow(ResultSet rs, int rowNum) throws SQLException {
		OfficialData officialData = new OfficialData();
		officialData.setPost(rs.getString("post"));
		officialData.setName(rs.getString("name"));
		officialData.setRoomNo(rs.getString("roomno"));
		officialData.setBuildingNo(rs.getString("buildingno"));
		officialData.setContact(rs.getLong("contact"));
		return officialData;
	}
}
