package com.cloud.toppo.Buisiness.Domain;


import java.util.Collection;

import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.User;

public class ExtensionUser extends User{
	
	private String name;

	public ExtensionUser(String userName, String password, Collection<? extends GrantedAuthority> authority,
			String name) {
		super(userName, password, authority);
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	


}
