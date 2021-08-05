package com.cloud.toppo.Buisiness.Domain;

import java.io.Serializable;
import java.time.LocalDate;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.springframework.format.annotation.DateTimeFormat;

public class UserModel implements Serializable{
	
	private int salesId;
	
	@NotNull
	@Size(max = 50, min = 1)
	@Pattern(regexp = "^[a-zA-Z0-9]*")
	private String userId;
	@NotNull
	@Size(max = 50, min = 8)
	@Pattern(regexp = "^[a-zA-Z0-9]*")
	private String password;
	private int jobId;
	@NotNull
	@Size(max = 50, min = 1)
	private String userName;
	@NotNull
	@Pattern(regexp="^[0-9]{3}-[0-9]{4}$")
	@Size(max = 8, min = 1)
	private String postCode;
	@NotNull
	@Size(max = 50, min = 1)
	private String address;
	@NotNull
	@Email
	@Size(max = 50, min = 1)
	private String mail;
	@NotNull
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private LocalDate birth;
	
	
	
	public int getSalesId() {
		return salesId;
	}
	public void setSalesId(int salesId) {
		this.salesId = salesId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getJobId() {
		return jobId;
	}
	public void setJobId(int jobId) {
		this.jobId = jobId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPostCode() {
		return postCode;
	}
	public void setPostCode(String postCode) {
		this.postCode = postCode;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public LocalDate getBirth() {
		return birth;
	}
	public void setBirth(LocalDate birth) {
		this.birth = birth;
	}
	
	

}
