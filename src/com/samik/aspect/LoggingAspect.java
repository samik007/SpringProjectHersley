package com.samik.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.web.servlet.ModelAndView;

@Aspect
public class LoggingAspect {
	
	@Before("HomeGetter()")
	public void LoggingAdvice(JoinPoint joinPoint){
		System.out.println("Logger Advice called for Home Request");
		System.out.println(joinPoint.toString());
	}
	
	@Pointcut("execution(protected org.springframework.web.servlet.ModelAndView getHomePage())")
	public void HomeGetter(){}
}
