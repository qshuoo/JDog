package com.jdog.service;

import com.jdog.domain.User;

public interface UserService {
	
	public boolean login(String name,String pwd);
	public boolean addUser(String name,String pwd,String phone);
	public User getUserByUName(String name);
	public String getDisplayName(String name);
	

}
