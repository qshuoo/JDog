package com.jdog.service;



public interface UserService {
	
	public boolean login(String name,String pwd);
	public boolean getUserByName(String name);
	public boolean addUser(String name,String pwd,String phone);
	public int getIdByName(String name);
	public String getRnameByUname(String name);

}
