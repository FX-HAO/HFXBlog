package com.HFXBlog.main.bo;

import java.util.List;

import com.HFXBlog.main.model.Admin;

public interface AdminBo {
	
	//add admin
	void addAdmin(Admin admin);
		
	//update admin
	void updateAdmin(Admin admin);
		
	//delete admin
	void deleteAdmin(Admin admin);
	
	//query all the admins
	List<Admin> queryAll();
		
	//query admin
	Admin queryByName(Admin admin);
	
	//send mail
	void SendMail(String toEmail,String adminname,String url);
	
	//register validate
	public String registerValidate(Admin admin,String confirmPassword);
}
