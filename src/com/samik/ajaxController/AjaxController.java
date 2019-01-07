package com.samik.ajaxController;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AjaxController {
	
	@Autowired
	OfficialInfoService officialInfoService;
	
	@Autowired
	OfficialData officialData;
	
	AjaxResponseBody result = new AjaxResponseBody();
	
	@ResponseBody
	@RequestMapping(value = "/ajax", method=RequestMethod.POST)
    public AjaxResponseBody getAjax(@RequestBody String post){
		officialData = officialInfoService.getOfficialInfo(post);
		result.setOfficialData(officialData);
		result.setStatus("Data Received");
    	return result;
    }
}
