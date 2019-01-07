package com.samik.newAdmission;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
@ControllerAdvice
public class NewAdmissionController {
	
	@Autowired
	private ClassTenDetails classTenDetails;
	
	@Autowired
	private ClassTwelveDetails classTwelveDetails;
	
	@Autowired
	private FatherIncomeDetail fatherIncomeDetail;
	
	@Autowired
	private Scholarship scholarship;
	
	@Autowired
	private StudentExchangeDetail studentExchangeDetail;
	
	@Autowired
	private ExamDetails examDetails;
	
	@Autowired
	private NewAdmissionService newAdmissionService;
	
	@Autowired
	Masterdata masterdata;
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET)
	public ModelAndView getPopupDetails(@PathVariable("id") String id, HttpSession session){
		ModelAndView modelAndView = null;
		if(id.equals("Class10Details")){
			if(null != session.getAttribute("flagClass10")){
				session.removeAttribute("flagClass10");			
			}
			modelAndView = new ModelAndView("content/newAdmission/Class10Details");			
		}else if(id.equals("Class12Details")){
			if(null != session.getAttribute("flagClass12")){
				session.removeAttribute("flagClass12");			
			}
			modelAndView = new ModelAndView("content/newAdmission/Class12Details");			
		}else if(id.equals("FatherIncome")){
			if(null != session.getAttribute("flagFatherIncome")){
				session.removeAttribute("flagFatherIncome");			
			}
			modelAndView = new ModelAndView("content/newAdmission/FatherIncome");			
		}else if(id.equals("Scholarship")){
			if(null != session.getAttribute("flagScholarship")){
				session.removeAttribute("flagScholarship");			
			}
			modelAndView = new ModelAndView("content/newAdmission/Scholarship");			
		}else if(id.equals("StudentExchange")){
			if(null != session.getAttribute("flagStudentExchange")){
				session.removeAttribute("flagStudentExchange");			
			}
			modelAndView = new ModelAndView("content/newAdmission/StudentExchange");			
		}else if(id.equals("ExamDetails")){
			if(null != session.getAttribute("flagExamDetails")){
				session.removeAttribute("flagExamDetails");			
			}
			modelAndView = new ModelAndView("content/newAdmission/ExamDetails");			
		}
		return modelAndView;
	}
	
	@RequestMapping(value = "/Class10Submit", method = RequestMethod.POST)
	public String getClass10Details(@RequestParam String year, @RequestParam String school, @RequestParam int marks,
										HttpSession session){
		classTenDetails.setYear(year);
		classTenDetails.setSchool(school);
		classTenDetails.setMarks(marks);
		
		int rowsInserted = newAdmissionService.insertClassTenDetails(classTenDetails);
		System.out.println("Class10Details rowsInserted--> " + rowsInserted);
		
		session.setAttribute("flagClass10", "pass");
		session.setAttribute("classTenDetails", classTenDetails);
		
		return "content/newAdmission/Class10Details";
	}
	
	@RequestMapping(value = "/Class12Submit", method = RequestMethod.POST)
	public String getClass12Details(@RequestParam String year, @RequestParam String school, @RequestParam int marks,
										HttpSession session){
		classTwelveDetails.setYear(year);
		classTwelveDetails.setSchool(school);
		classTwelveDetails.setMarks(marks);
		
		int rowsInserted = newAdmissionService.insertClassTwelveenDetails(classTwelveDetails);
		System.out.println("classTwelveDetails rowsInserted--> " + rowsInserted);
		
		session.setAttribute("flagClass12", "pass");
		session.setAttribute("classTwelveDetails", classTwelveDetails);
		
		return "content/newAdmission/Class12Details";
	}
	
	@RequestMapping(value = "/FatherIncomeSubmit", method = RequestMethod.POST)
	public String getFatherDetails(@RequestParam String name, @RequestParam int age, @RequestParam int salary,
										HttpSession session){
		fatherIncomeDetail.setName(name);
		fatherIncomeDetail.setAge(age);
		fatherIncomeDetail.setSalary(salary);
		
		session.setAttribute("flagFatherIncome", "pass");
		session.setAttribute("fatherIncomeDetail", fatherIncomeDetail);
		
		return "content/newAdmission/FatherIncome";
	}
	
	@RequestMapping(value = "/ScholarshipSubmit", method = RequestMethod.POST)
	public String getScholarshipDetails(@RequestParam String scholarshipName, @RequestParam int scholarshipPercentage,
										HttpSession session){
		scholarship.setScholarshipName(scholarshipName);
		scholarship.setScholarshipPercentage(scholarshipPercentage);
		
		session.setAttribute("flagScholarship", "pass");
		session.setAttribute("scholarship", scholarship);
		
		return "content/newAdmission/Scholarship";
	}
	
	@RequestMapping(value = "/StudentExchangeSubmit", method = RequestMethod.POST)
	public String getStudentExchangeDetail(@RequestParam String studentExchangeName, @RequestParam int studentExchangeFees,
										HttpSession session){
		studentExchangeDetail.setStudentExchangeName(studentExchangeName);
		studentExchangeDetail.setStudentExchangeFees(studentExchangeFees);
		
		session.setAttribute("flagStudentExchange", "pass");
		session.setAttribute("studentExchangeDetail", studentExchangeDetail);
		
		return "content/newAdmission/StudentExchange";
	}
	
	@RequestMapping(value = "/ExamDetailsSubmit", method = RequestMethod.POST)
	public String getExamDetails(@RequestParam String examName, @RequestParam int examRank,
										HttpSession session){
		examDetails.setExamName(examName);
		examDetails.setExamRank(examRank);
		
		session.setAttribute("flagExamDetails", "pass");
		session.setAttribute("examDetails", examDetails);
		
		return "content/newAdmission/ExamDetails";
	}
	
	@RequestMapping(value = "/NewAdmissionSubmit", method = RequestMethod.POST)
	public String getNewAdmissionDetails(@ModelAttribute("newAdmissionData") NewAdmissionData newAdmissionData,
										HttpSession session){
		
		System.out.println("Testing -- 1");
		masterdata = newAdmissionService.insertNewAdmissionDetails(newAdmissionData, session);
		
		session.setAttribute("masterdata", masterdata);
		Masterdata mdata = (Masterdata)session.getAttribute("masterdata");
		
		return "content/newAdmission/AdmissionStatus";
	}
}
