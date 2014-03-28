package com.HFXBlog.main.dao;

import java.util.List;

import com.HFXBlog.main.model.Admin;

public interface AdminDAO {
	
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
	
}
