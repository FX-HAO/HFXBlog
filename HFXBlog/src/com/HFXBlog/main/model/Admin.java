package com.HFXBlog.main.model;

import java.util.Date;

public class Admin {

	private long adminID;
	private String adminname;
	private String password;
	private String nickname;
	private String email;
	private Date date;

	public Admin(){}
	
	public Admin(String adminname,String nickname){
		this.adminname=adminname;
		this.nickname=nickname;
	}
	
	public long getAdminID() {
		return adminID;
	}

	public void setAdminID(long adminID) {
		this.adminID = adminID;
	}

	public String getAdminname() {
		return adminname;
	}

	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	
}
