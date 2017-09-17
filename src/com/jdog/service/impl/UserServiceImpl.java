package com.jdog.service.impl;

import com.jdog.dao.UserDao;
import com.jdog.dao.impl.UserDaoImpl;
import com.jdog.domain.User;
import com.jdog.service.UserService;
import com.sun.javafx.sg.prism.web.NGWebView;

public class UserServiceImpl implements UserService {
	UserDao ud = new UserDaoImpl();

	@Override
	public boolean login(String name, String pwd) {
		// TODO Auto-generated method stub
		return pwd.equals(ud.getUserByUName(name).getUpwd());
	}

	@Override
	public User getUserByUName(String name) {
		// TODO Auto-generated method stub
		return ud.getUserByUName(name);
	}

	@Override
	public boolean addUser(String name, String pwd, String phone) {
		// TODO Auto-generated method stub
		User user = new User();
		user.setUname(name);
		user.setUpwd(pwd);
		user.setPhone(phone);
		return ud.addUser(user);
	}

	@Override
	public String getDisplayName(String name) {
		// TODO Auto-generated method stub
		String rName = ud.getUserByUName(name).getRname();
		return rName == null?name:rName;
	}

}
