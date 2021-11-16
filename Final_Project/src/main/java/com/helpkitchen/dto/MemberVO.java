package com.helpkitchen.dto;

public class MemberVO {
	private String userid;
	private String name;
	private String pwd;
	private String pwd_chk;
	private String email;
	private int admin;
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPwd_chk() {
		return pwd_chk;
	}
	public void setPwd_chk(String pwd_chk) {
		this.pwd_chk = pwd_chk;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAdmin() {
		return admin;
	}
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	
	@Override
	public String toString() {
		return "MemberVO [userid=" + userid + ", name=" + name + ", pwd=" + pwd + ", pwd_chk=" + pwd_chk + ", email="
				+ email + ", admin=" + admin + "]";
	}
	
}
