package com.jdog.service;

import com.jdog.dao.UserDao;
import com.jdog.dao.UserDaoImpl;
import com.jdog.domain.User;

public class UserServiceImpl implements UserService {
	UserDao ud = new UserDaoImpl();

	@Override
	public boolean login(String name, String pwd) {
		// TODO Auto-generated method stub
		return ud.login(name, pwd);
	}

	@Override
	public boolean getUserByName(String name) {
		// TODO Auto-generated method stub
		return ud.getUserByName(name);
	}
	
	@Override
	public boolean addUser(String name, String pwd, String phone) {
		// TODO Auto-generated method stub
		User user = new User();
		user.setUname(name);
		user.setPwd(pwd);
		user.setPhone(phone);
		return ud.addUser(user);
	}

	@Override
	public int getIdByName(String name) {
		// TODO Auto-generated method stub
		return ud.getIdByName(name);
	}

	@Override
	public String getRnameByUname(String name) {
		// TODO Auto-generated method stub
		String rname = ud.getRnameByUname(name);
		return rname == null?name:rname;
	}

}
