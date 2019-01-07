package com.samik.DbController;

import java.util.List;

import javax.sql.DataSource;

import com.samik.aboutController.AboutData;
import com.samik.ajaxController.OfficialData;
import com.samik.feedbackController.FeedbackData;
import com.samik.loginController.Customer;
import com.samik.loginController.RegisterCustomer;
import com.samik.newAdmission.ClassTenDetails;
import com.samik.newAdmission.ClassTwelveDetails;
import com.samik.newAdmission.Masterdata;
import com.samik.newAdmission.NewAdmissionData;
import com.samik.searchController.General;
import com.samik.servlet.Student;

public interface CustomerDAO {
	public void setDataSource(DataSource ds);
	public Customer getCustomer(String name, String password);
	public int insertNewUser(RegisterCustomer registerCustomer);
	public int insertfeedback(FeedbackData feedbackData);
	public List<FeedbackData> getFeedbackDetails();
	public List<AboutData> getAboutDetails();
	public OfficialData getOfficialInformation(String post);
	public int insertClassTenDetails(ClassTenDetails classTenDetails);
	public int insertClassTwelveenDetails(ClassTwelveDetails classTwelveDetails);
	public int getlatestRegNumber();
	public int insertMasterdataDetails(Masterdata masterdata);
	public General getGeneralDetails(String unit);
	public int updateGeneralDetails(General general);
	public void insertUser(int id, String name);
}
