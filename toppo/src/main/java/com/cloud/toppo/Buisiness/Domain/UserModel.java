package com.cloud.toppo.Buisiness.Domain;

import java.io.Serializable;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;

public class UserModel implements Serializable{
	
	
	
	@NotNull
	@Size(max = 50, min = 1)
	@Pattern(regexp = "^[a-zA-Z0-9]*")
	private String userId; //ユーザーID
	private String frontBackId; //表裏ID
	@NotNull
	@Size(max = 50, min = 1)
	private String userName; //ユーザー名
	@NotNull
	@Size(max = 50, min = 8)
	@Pattern(regexp = "^[a-zA-Z0-9]*")
	private String password; //パスワード
	@NotNull
	@Email
	@Size(max = 50, min = 1)
	private String mail; //メールアドレス
	private String introduce; //自己紹介文
	private String image; //画像
	
	
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getFrontBackId() {
		return frontBackId;
	}
	public void setFrontBackId(String frontBackId) {
		this.frontBackId = frontBackId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMail() {
		return mail;
	}
	public void setMail(String mail) {
		this.mail = mail;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	
	
	
	
	
	
	


}
