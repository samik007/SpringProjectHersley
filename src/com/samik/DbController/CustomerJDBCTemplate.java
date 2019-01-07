package com.samik.DbController;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.core.simple.SimpleJdbcCall;

import com.samik.aboutController.AboutData;
import com.samik.aboutController.AboutMapper;
import com.samik.ajaxController.OfficialData;
import com.samik.ajaxController.OfficialInfoMapper;
import com.samik.feedbackController.FeedbackData;
import com.samik.feedbackController.FeedbackMapper;
import com.samik.loginController.Customer;
import com.samik.loginController.RegisterCustomer;
import com.samik.newAdmission.ClassTenDetails;
import com.samik.newAdmission.ClassTwelveDetails;
import com.samik.newAdmission.MasterDataMapper;
import com.samik.newAdmission.Masterdata;
import com.samik.searchController.General;
import com.samik.searchController.GeneralDataMapper;
import com.samik.servlet.Student;

public class CustomerJDBCTemplate implements CustomerDAO{
	
	@Autowired
	private DataSource dataSource;
	private JdbcTemplate jdbcTemplateObject;
	
	@Autowired
	private Customer customer;
	
	@Autowired
	OfficialData officialData;
	
	@Autowired
	Masterdata masterdata;
	
	@Autowired
	General general;
	
	@Override
	public void setDataSource(DataSource ds) {
		this.dataSource = ds;
		this.jdbcTemplateObject = new JdbcTemplate(ds);
	}

	@Override
	public Customer getCustomer(String userid, String password) {
		String SQL = "Select userid, password from user_data where userid = ? and password = ?";
		try{
			customer = jdbcTemplateObject.queryForObject(SQL, new Object[]{userid, password}, new CustomerMapper());
			return customer;			
		}catch(EmptyResultDataAccessException e){
			return null;
		}
	}

	@Override
	public int insertNewUser(RegisterCustomer registerCustomer) {
		int rowsInserted = 0;
		Long mobileNum = Long.parseLong(registerCustomer.getMobileNo());
		String SQL = "insert into user_data(USERID, PASSWORD, MOBILE, EMAIL) values(?, ?, ?, ?)";
		rowsInserted = jdbcTemplateObject.update(SQL, new Object[] {registerCustomer.getUserNameSignUp(),
													registerCustomer.getPasswordSignUp(), mobileNum, registerCustomer.getEmail()});
		return rowsInserted;
	}

	@Override
	public int insertfeedback(FeedbackData feedbackData) {
		int rowsInserted = 0; 
		String SQL = "insert into feedback(NAME, EMAIL, STAR, USERCOMMENTS, USERDATE) values(?, ?, ?, ?, ?)";
		rowsInserted = jdbcTemplateObject.update(SQL, new Object[] {feedbackData.getName(), feedbackData.getEmail(),
				feedbackData.getStar(), feedbackData.getComments(), feedbackData.getDate()});
		return rowsInserted;
	}

	@Override
	public List<FeedbackData> getFeedbackDetails() {
		String SQL = "select * from feedback order by userdate";
		List<FeedbackData> feedbackDataList = jdbcTemplateObject.query(SQL, new FeedbackMapper());
		return feedbackDataList;
	}

	@Override
	public List<AboutData> getAboutDetails() {
		String SQL = "select * from about";
		List<AboutData> aboutDataList = jdbcTemplateObject.query(SQL, new AboutMapper());
		return aboutDataList;
	}

	@Override
	public OfficialData getOfficialInformation(String post) {
		String SQL = "select * from board_of_directors where post like ?";
		try{
			officialData = jdbcTemplateObject.queryForObject(SQL, new Object[]{post}, new OfficialInfoMapper());
			return officialData;			
		}catch(EmptyResultDataAccessException e){
			return null;
		}
	}

	@Override
	public int insertClassTenDetails(ClassTenDetails classTenDetails) {
		int rowsInserted = 0; 
		String SQL = "insert into class10Details values(?, ?, ?)";
		rowsInserted = jdbcTemplateObject.update(SQL, new Object[] {classTenDetails.getYear(),
											classTenDetails.getSchool(), classTenDetails.getMarks()});
		return rowsInserted;
	}

	@Override
	public int insertClassTwelveenDetails(ClassTwelveDetails classTwelveDetails) {
		int rowsInserted = 0; 
		String SQL = "insert into class12Details values(?, ?, ?)";
		rowsInserted = jdbcTemplateObject.update(SQL, new Object[] {classTwelveDetails.getYear(),
					classTwelveDetails.getSchool(), classTwelveDetails.getMarks()});
		return rowsInserted;
	}

	@Override
	public int getlatestRegNumber() {
		String SQL = "select max(regnumber) as regNum from Masterdata order by regnumber";
		masterdata = jdbcTemplateObject.queryForObject(SQL, new MasterDataMapper());
		int regNumber = masterdata.getRegNumber();
		return regNumber;
	}

	@Override
	public int insertMasterdataDetails(Masterdata masterdata) {
		int rowsInserted = 0; 
		String SQL = "insert into Masterdata values(?, ?, ?, ?)";
		rowsInserted = jdbcTemplateObject.update(SQL, new Object[] {masterdata.getEmailID(), masterdata.getRank(),
																masterdata.getName(), masterdata.getRegNumber()});
		return rowsInserted;
	}

	@Override
	public General getGeneralDetails(String unit) {
		String SQL = "select * from general where unit_type = ?";
		general = jdbcTemplateObject.queryForObject(SQL, new Object[]{unit}, new GeneralDataMapper());
		return general;
	}

	@Override
	public int updateGeneralDetails(General general) {
		int rowsUpdated = 0;
		String SQL = "UPDATE general set eqp_id='"+general.getEqp_id()+"',min_curve='"+general.getMin_curve()+"' ,speed='"+general.getSpeed()+"'where unit_type='"+general.getUnit_type()+"' ";
		
		try{
			rowsUpdated = jdbcTemplateObject.update(SQL);
		}catch(Exception e){
			e.printStackTrace();
		}
		return rowsUpdated;
	}

	@Override
	public void insertUser(int id, String name) {
		System.out.println("Testing stored procedure");
		SimpleJdbcCall jdbcCall = new SimpleJdbcCall(dataSource).withProcedureName("INSERTR");
		
		SqlParameterSource in = new MapSqlParameterSource().addValue("id", id).addValue("name", name);
		jdbcCall.execute(in);
	}
}















