package com.jdog.dao;

import com.jdog.domain.User;

public interface UserDao {
	public User getUserByUName(String name);
	public User getUserByUId(int id);
	public boolean addUser(User user);

}
