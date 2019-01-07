package com.samik.ajaxController;

import com.fasterxml.jackson.annotation.JsonView;

public class AjaxResponseBody {
	
	@JsonView(Views.Public.class)
	String status;
	
	@JsonView(Views.Public.class)
	OfficialData officialData;

	public OfficialData getOfficialData() {
		return officialData;
	}
	public void setOfficialData(OfficialData officialData) {
		this.officialData = officialData;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
}
