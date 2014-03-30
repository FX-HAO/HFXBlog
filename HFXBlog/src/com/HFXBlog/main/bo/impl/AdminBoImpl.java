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
	
	public Admin queryByName(Admin admin) {
		return adminDAO.queryByName(admin);
	}
	
	public List<Object[]> queryExistNames(){
		return adminDAO.queryExistNames();
	}
	
	public void SendMail(String toEmail,String adminname,String url){
		try{
			sendMail.send(toEmail, adminname, url);
		}
		catch(IOException e){
			e.printStackTrace();
		}
	}
	
	public String registerValidate(Admin admin,String confirmPassword){
		String[][] names=null;
		List list=queryExistNames();
		String[] nickname=null;
		String[] adminname=null;
		String[] email=null;
		if(list!=null && list.size()!=0){
			nickname=new String[list.size()];
			adminname=new String[list.size()];
			email=new String[list.size()];
			for(int i=0;i<list.size();i++){
				nickname[i]=(String)(((Object[])list.get(i))[0]);
				adminname[i]=(String)(((Object[])list.get(i))[1]);
				email[i]=(String)(((Object[])list.get(i))[2]);
			}
			names=new String[3][];
			names[0]=nickname;
			names[1]=adminname;
			names[2]=email;
		}
		
		try{
			return validate.registerValidate(names, admin, confirmPassword);
		}
		catch(IOException e){
			e.printStackTrace();
			return null;
		}
	}
	
}
