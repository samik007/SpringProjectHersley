package com.samik.newAdmission;

public class Masterdata {
	private double FinalTotalFees;
	private int rank;
	private String name;
	private String emailID;
	private int regNumber;
	public int getRegNumber() {
		return regNumber;
	}
	public void setRegNumber(int regNumber) {
		this.regNumber = regNumber;
	}
	public double getFinalTotalFees() {
		return FinalTotalFees;
	}
	public void setFinalTotalFees(double finalTotalFees) {
		FinalTotalFees = finalTotalFees;
	}
	public int getRank() {
		return rank;
	}
	public void setRank(int rank) {
		this.rank = rank;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmailID() {
		return emailID;
	}
	public void setEmailID(String emailID) {
		this.emailID = emailID;
	}
}
