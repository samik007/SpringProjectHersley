package com.samik.loginController;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {
	
	@Autowired
	private CustomerService customerService;
	
	@Autowired
	private Customer customer;
	
	@Autowired
	private RegisterCustomer registerCustomer;
	
	@RequestMapping(value="/login", method = RequestMethod.GET)
	protected ModelAndView getLoginPage() throws Exception{
		ModelAndView modelAndView = new ModelAndView("login/Login");
		return modelAndView;
	}
	
	@RequestMapping(value="/loginSubmit", method = RequestMethod.POST)
	protected String verifyLoginForm(@RequestParam String userId, @RequestParam String password,
						HttpSession session, Model model) throws Exception{
		customer = customerService.loginCustomer(userId, password);
		if(null == customer){
			model.addAttribute("loginError", true);
			return "login/Login";			
		}
		else{
			session.setAttribute("loggedUser", customer);				
			return "content/home/Home";	
		}
	}
	
	@RequestMapping(value="/registerSubmit", method = RequestMethod.POST)
	protected String registerLoginForm(@RequestParam String userNameSignUp, @RequestParam String passwordSignUp,
			@RequestParam String mobileNo,@RequestParam String email,
						HttpSession session, Model model) throws Exception{
		
		registerCustomer.setUserNameSignUp(userNameSignUp);
		registerCustomer.setPasswordSignUp(passwordSignUp);
		registerCustomer.setMobileNo(mobileNo);
		registerCustomer.setEmail(email);
		
		int rowsInserted = customerService.registerCustoner(registerCustomer);
		if(rowsInserted == 0){
			model.addAttribute("registrationError", true);
		}else{
			model.addAttribute("registrationSuccess", true);
		}
		return "login/Login";			
	}
	
	@RequestMapping(value="/logout", method = RequestMethod.GET)
	protected String logoutForm(HttpSession session) throws Exception{
		session.removeAttribute("loggedUser");
		return "content/home/Home";
	}
}