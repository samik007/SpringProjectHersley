package com.samik.searchController;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SearchController {
	
	@Autowired
	private SearchService searchService;
	
	@Autowired
	private General general;
	
	@RequestMapping(value="/searchSubmit", method=RequestMethod.POST)
	public String submitSearch(@RequestParam String unit, HttpSession session, Model model){
		
		general = searchService.getGeneralDetails(unit);
		session.setAttribute("general", general);
		return "content/eqpDetails/displayPage";
	}
	
	@RequestMapping(value="/displaySubmit", method=RequestMethod.POST)
	public String submitDisplay(@RequestParam String mincurve, @RequestParam String speed, @RequestParam String eqp_id, HttpSession session, Model model){
		
		System.out.println("Testing");
		// Get the old values
		general = (General) session.getAttribute("general");
		String unit = general.getUnit_type();
		session.removeAttribute("general");
		
		// Load with the new values
		general.setMin_curve(mincurve);
		general.setSpeed(speed);
		general.setEqp_id(eqp_id);
		
		// Update the table
		int rowsUpdated = searchService.updateGeneralDetails(general);
		
		// fetch the values
		general = searchService.getGeneralDetails(unit);
		session.setAttribute("general", general);
		
		return "content/eqpDetails/displayPage";
	}
}
