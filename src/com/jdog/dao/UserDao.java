package com.jdog.dao;

import com.jdog.domain.User;

public interface UserDao {
	public boolean login(String name,String pwd);
	public boolean getUserByName(String name);
	public boolean addUser(User user);

}
