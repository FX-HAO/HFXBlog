package com.HFXBlog.main.services;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URL;
import java.util.Properties;
import java.util.regex.Pattern;

import com.HFXBlog.main.model.Admin;

public class Validate {
	
	public String registerValidate(Admin admin,Admin nickname,Admin adminname,Admin email,String confirmPassword) throws IOException{
		URL u=SendMail.class.getResource("/com/HFXBlog/resources/config/properties/error.properties");
		File file=new File(u.getFile());
		FileInputStream in=new FileInputStream(file);
		Properties pros=new Properties();
		pros.load(in);
		in.close();
		
		if(admin.getNickname()==null || !Pattern.compile(pros.getProperty("REGEX.nickname")).matcher(admin.getNickname()).matches())
			return pros.getProperty("REGIST.INVALID.nickname");
		
		if(nickname!=null)
			return pros.getProperty("REGIST.ERROR.nickname");
		
		if(admin.getAdminname()==null || !Pattern.compile(pros.getProperty("REGEX.adminname")).matcher(admin.getAdminname()).matches())
			return pros.getProperty("REGIST.INVALID.adminname");
		
		if(adminname!=null)
			return pros.getProperty("REGIST.ERROR.adminname");

		
		if(admin.getPassword()==null || !Pattern.compile(pros.getProperty("REGEX.password")).matcher(admin.getPassword()).matches())
			return pros.getProperty("REGIST.INVALID.password");
		
		if(!admin.getPassword().equals(confirmPassword))
			return pros.getProperty("REGIST.INVALID.confirmPassword");
		
		if(admin.getEmail()==null || !Pattern.compile(pros.getProperty("REGEX.email")).matcher(admin.getEmail()).matches())
			return pros.getProperty("REGIST.INVALID.email");
		
		//是否验证邮箱已被使用
		/*
		if(email!=null)
			return pros.getProperty("REGIST.ERROR.email");
		*/
		
		return null;
	}
	
	public Admin loginValidate(Admin admin,Admin adminData){
		if(adminData.getAdminname().equals(admin.getAdminname()) && adminData.getPassword().equals(admin.getPassword()))
			return adminData;
		return null;
	}
	
}
