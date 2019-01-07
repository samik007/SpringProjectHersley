package com.samik.newAdmission;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MasterDataMapper implements RowMapper<Masterdata>{

	@Override
	public Masterdata mapRow(ResultSet rs, int rowNum) throws SQLException {
		Masterdata masterData = new Masterdata();
		masterData.setRegNumber(rs.getInt("REGNUM"));
		return masterData;
	}
	
}
