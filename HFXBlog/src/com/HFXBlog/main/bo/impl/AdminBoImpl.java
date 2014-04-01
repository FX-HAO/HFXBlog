package com.HFXBlog.main.bo.impl;

import java.io.IOException;
import java.util.List;

import com.HFXBlog.main.bo.AdminBo;
import com.HFXBlog.main.dao.AdminDAO;
import com.HFXBlog.main.model.Admin;
import com.HFXBlog.main.services.SendMail;
import com.HFXBlog.main.services.Validate;

public class AdminBoImpl implements AdminBo{

	private AdminDAO adminDAO;
	private SendMail sendMail;
	private Validate validate;
	
	
	public SendMail getSendMail() {
		return sendMail;
	}
	public void setSendMail(SendMail sendMail) {
		this.sendMail = sendMail;
	}
	public AdminDAO getAdminDAO() {
		return adminDAO;
	}
	public void setAdminDAO(AdminDAO adminDAO) {
		this.adminDAO = adminDAO;
	}
	public Validate getValidate() {
		return validate;
	}
	public void setValidate(Validate validate) {
		this.validate = validate;
	}
	
	
	public void addAdmin(Admin admin) {
		adminDAO.addAdmin(admin);
	}

	public void updateAdmin(Admin admin) {
		adminDAO.updateAdmin(admin);
	}

	public void deleteAdmin(Admin admin) {
		adminDAO.deleteAdmin(admin);
	}

	public List<Admin> queryAll() {
		return adminDAO.queryAll();
	}
	
	public void SendMail(String toEmail,String adminname,String url){
		try{
			sendMail.send(toEmail, adminname, url);
		}
		catch(IOException e){
			e.printStackTrace();
		}
	}
	
	public Admin loginValidate(Admin admin){
		Admin adminData=adminDAO.queryByName(admin);
		if(adminData==null){
			return null;
		}
		return validate.loginValidate(admin,adminData);
	}
	
	public String registerValidate(Admin admin,String confirmPassword){
		try {
			return validate.registerValidate(admin,adminDAO.queryByNickName(admin),adminDAO.queryByName(admin),adminDAO.queryByEmail(admin), confirmPassword);
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}
	
}
