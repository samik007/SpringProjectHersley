package com.samik.searchController;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class GeneralDataMapper implements RowMapper<General>{

	@Override
	public General mapRow(ResultSet rs, int rowNum) throws SQLException {
		General general = new General();
		general.setUnit_type(rs.getString("unit_type"));
		general.setBuilt_new(rs.getString("built_new"));
		general.setMac_id(rs.getString("mac_id"));
		general.setBuilder(rs.getString("builder"));
		general.setAei_tag(rs.getString("aei_tag"));
		general.setOwner(rs.getString("owner"));
		general.setEqp_id(rs.getString("eqp_id"));
		general.setMin_curve(rs.getString("min_curve"));
		general.setSpeed(rs.getString("speed"));
		return general;
	}
	
}
