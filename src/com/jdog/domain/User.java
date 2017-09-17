package com.jdog.domain;

public class User {
	private int uid;
	private String uname;
	private String upwd;
	private String rname;
	private String sex;
	private String phone;
	private String email;
	
	public User() {
		super();
	}

	public User(int uid, String uname, String upwd, String rname, String sex, String phone, String email) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.upwd = upwd;
		this.rname = rname;
		this.sex = sex;
		this.phone = phone;
		this.email = email;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	public String getRname() {
		return rname;
	}

	public void setRname(String rname) {
		this.rname = rname;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", uname=" + uname + ", upwd=" + upwd + ", rname=" + rname + ", sex=" + sex
				+ ", phone=" + phone + ", email=" + email + "]";
	}

	
	
	

}
