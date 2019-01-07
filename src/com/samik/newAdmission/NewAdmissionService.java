package com.samik.newAdmission;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import com.samik.DbController.CustomerJDBCTemplate;

public class NewAdmissionService {
	
	@Autowired
	private CustomerJDBCTemplate customerJDBCTemplate;
	
	@Autowired
	private ClassTenDetails classTenDetails;
	
	@Autowired
	private ClassTwelveDetails classTwelveDetails;
	
	@Autowired
	FatherIncomeDetail fatherIncomeDetail;
	
	@Autowired
	Scholarship scholarship;
	
	@Autowired
	StudentExchangeDetail studentExchangeDetail;
	
	@Autowired
	ExamDetails examDetails;
	
	@Autowired
	Masterdata masterdata;
	
	public int insertClassTenDetails(ClassTenDetails classTenDetails){
		int rowsInserted = customerJDBCTemplate.insertClassTenDetails(classTenDetails);
		return rowsInserted;
	}
	
	public int insertClassTwelveenDetails(ClassTwelveDetails classTwelveDetails){
		int rowsInserted = customerJDBCTemplate.insertClassTwelveenDetails(classTwelveDetails);
		return rowsInserted;
	}
	
	public Masterdata insertNewAdmissionDetails(NewAdmissionData newAdmissionData, HttpSession session){
		
		double fees = 1000;
		double tutionFees = 1000;
		
		int classTenPercentage = 0; 
		if(null != session.getAttribute("classTenDetails")){
			classTenDetails = (ClassTenDetails)session.getAttribute("classTenDetails"); 			
		}
		classTenPercentage = classTenDetails.getMarks();
		
		int classTwelvePercentage = 0; 
		if(null != session.getAttribute("classTenDetails")){
			classTwelveDetails = (ClassTwelveDetails)session.getAttribute("classTwelveDetails"); 			
		}
		classTwelvePercentage = classTwelveDetails.getMarks();
		
		int fathersIncome = 0;
		if(null != session.getAttribute("fatherIncomeDetail")){
			fatherIncomeDetail = (FatherIncomeDetail)session.getAttribute("fatherIncomeDetail"); 			
		}
		fathersIncome = fatherIncomeDetail.getSalary();
		
		int scholarshipPercent = 0;
		if(null != session.getAttribute("scholarship")){
			scholarship = (Scholarship)session.getAttribute("scholarship"); 			
		}
		scholarshipPercent = scholarship.getScholarshipPercentage();
		
		int studentExchangeFees = 0;
		if(null != session.getAttribute("studentExchangeDetail")){
			studentExchangeDetail = (StudentExchangeDetail)session.getAttribute("studentExchangeDetail"); 			
		}
		studentExchangeFees = studentExchangeDetail.getStudentExchangeFees();
		
		int examRank = 0;
		if(null != session.getAttribute("examDetails")){
			examDetails = (ExamDetails)session.getAttribute("examDetails"); 			
		}
		examRank = examDetails.getExamRank();
		
		int class10Rebate = 0;
		if(classTenPercentage > 90){
			class10Rebate = 5;
		}
		
		int class12Rebate = 0;
		if(classTwelvePercentage > 90){
			class12Rebate = 5;
		}
		
		int fathersIncomeRebate = 0;
		if(fathersIncome < 10000){
			fathersIncomeRebate = 10;
		}
		
		double rebate = (fees * class10Rebate) / 100 + (fees * class12Rebate) / 100 + (fees * fathersIncomeRebate) / 100 + (fees *scholarshipPercent)/100 ;
		double FinalTotalFees =  (fees + tutionFees + studentExchangeFees) - rebate;
		
		masterdata.setRank(examRank);
		masterdata.setFinalTotalFees(FinalTotalFees);
		masterdata.setName(newAdmissionData.getFirstName());
		masterdata.setEmailID(newAdmissionData.getEmail());
		
		int regNumber = customerJDBCTemplate.getlatestRegNumber();
		regNumber = regNumber + 1;
		masterdata.setRegNumber(regNumber);
			
		int rowNum = customerJDBCTemplate.insertMasterdataDetails(masterdata);
		System.out.println("Rows inserted: " + rowNum);
		
		return masterdata;
	}
}









