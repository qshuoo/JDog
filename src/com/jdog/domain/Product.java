package com.jdog.domain;

public class Product {
	private int pid;
	private String pname;
	private double price;
	private int pnum;
	private String pimg;
	private String pdes;
	
	public Product() {
		super();
	}

	public Product(int pid, String pname, double price, int pnum, String pimg, String pdes) {
		super();
		this.pid = pid;
		this.pname = pname;
		this.price = price;
		this.pnum = pnum;
		this.pimg = pimg;
		this.pdes = pdes;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getPnum() {
		return pnum;
	}

	public void setPnum(int pnum) {
		this.pnum = pnum;
	}

	public String getPimg() {
		return pimg;
	}

	public void setPimg(String pimg) {
		this.pimg = pimg;
	}

	public String getPdes() {
		return pdes;
	}

	public void setPdes(String pdes) {
		this.pdes = pdes;
	}

	@Override
	public String toString() {
		return "Product [pid=" + pid + ", pname=" + pname + ", price=" + price + ", pnum=" + pnum + ", pimg=" + pimg
				+ ", pdes=" + pdes + "]";
	}
	
	
	
	

}
