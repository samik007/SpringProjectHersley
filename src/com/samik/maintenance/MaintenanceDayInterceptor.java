package com.samik.maintenance;

import java.util.Calendar;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class MaintenanceDayInterceptor extends HandlerInterceptorAdapter{
	
	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler)
		    throws Exception {
		int day_of_week = Calendar.DAY_OF_WEEK;
		if(day_of_week == 6){
			response.getWriter().write("The Website is closed on sunday, please try on any other day");
			return false;
		}
		return true;
	}
}
