package com.samik.restController;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Hobby {
	@Id
	@GeneratedValue
	private int HobbyId;
	private String hobbyName;
	@ManyToOne
	@JoinColumn(name="id")
	private UserDetails user;
	
	public int getHobbyId() {
		return HobbyId;
	}
	public void setHobbyId(int hobbyId) {
		HobbyId = hobbyId;
	}
	public UserDetails getUser() {
		return user;
	}
	public void setUser(UserDetails user) {
		this.user = user;
	}
	public String getHobbyName() {
		return hobbyName;
	}
	public void setHobbyName(String hobbyName) {
		this.hobbyName = hobbyName;
	}
}
