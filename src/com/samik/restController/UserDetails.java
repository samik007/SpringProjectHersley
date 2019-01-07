package com.samik.restController;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

@Entity
public class UserDetails {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@Basic
	private String userName;
	
	@Lob
	private String description;
	
	@Temporal(TemporalType.DATE)
	private Date birthDate;
	
	@OneToMany(mappedBy="user", cascade=CascadeType.PERSIST)
	Collection<Hobby> hobbyList = new ArrayList<Hobby>();
	
	@OneToOne(cascade=CascadeType.PERSIST)
	@JoinColumn(name="Address_Id")
	private Address address;
	
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public Collection<Hobby> getHobbyList() {
		return hobbyList;
	}
	public void setHobbyList(Collection<Hobby> hobbyList) {
		this.hobbyList = hobbyList;
	}
	public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
}