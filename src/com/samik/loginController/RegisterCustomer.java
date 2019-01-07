package com.samik.loginController;

public class RegisterCustomer {
	private String userNameSignUp;
	private String passwordSignUp;
	private String mobileNo;
	private String email;
	
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getUserNameSignUp() {
		return userNameSignUp;
	}
	public void setUserNameSignUp(String userNameSignUp) {
		this.userNameSignUp = userNameSignUp;
	}
	public String getPasswordSignUp() {
		return passwordSignUp;
	}
	public void setPasswordSignUp(String passwordSignUp) {
		this.passwordSignUp = passwordSignUp;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
}
