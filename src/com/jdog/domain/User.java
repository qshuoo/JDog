package com.jdog.domain;

public class User {
	private int id;
	private String uname;
	private String pwd;
	private String rname;
	private String sex;
	private String phone;
	private String email;
	private String time;
	
	public User() {
		super();
	}

	public User(int id, String uname, String pwd, String rname, String sex, String phone, String email, String time) {
		super();
		this.id = id;
		this.uname = uname;
		this.pwd = pwd;
		this.rname = rname;
		this.sex = sex;
		this.phone = phone;
		this.email = email;
		this.time = time;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
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

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", uname=" + uname + ", pwd=" + pwd + ", rname=" + rname + ", sex=" + sex + ", phone="
				+ phone + ", email=" + email + ", time=" + time + "]";
	}
	
	

}
