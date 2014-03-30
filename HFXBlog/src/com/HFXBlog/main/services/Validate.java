package com.HFXBlog.main.services;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URL;
import java.util.Properties;
import java.util.regex.Pattern;

import com.HFXBlog.main.model.Admin;

public class Validate {
	
	public String registerValidate(String[][] names,Admin admin,String confirmPassword) throws IOException{
		URL u=SendMail.class.getResource("/com/HFXBlog/resources/config/properties/error.properties");
		File file=new File(u.getFile());
		FileInputStream in=new FileInputStream(file);
		Properties pros=new Properties();
		pros.load(in);
		in.close();
		
		if(admin.getNickname()==null || !Pattern.compile(pros.getProperty("REGEX.nickname")).matcher(admin.getNickname()).matches())
			return pros.getProperty("REGIST.INVALID.nickname");
		
		if(names!=null){
			for(int i=0;i<names[0].length;i++){
				if((names[0][i].toLowerCase()).equals(admin.getNickname().toLowerCase())){
					return pros.getProperty("REGIST.ERROR.nickname");
				}
			}
		}
		
		if(admin.getAdminname()==null || !Pattern.compile(pros.getProperty("REGEX.adminname")).matcher(admin.getAdminname()).matches())
			return pros.getProperty("REGIST.INVALID.adminname");
		
		if(names!=null){
			for(int i=0;i<names[1].length;i++){
				if((names[1][i].toLowerCase()).equals(admin.getAdminname().toLowerCase())){
					return pros.getProperty("REGIST.ERROR.adminname");
				}
			}
		}
		
		if(admin.getPassword()==null || !Pattern.compile(pros.getProperty("REGEX.password")).matcher(admin.getPassword()).matches())
			return pros.getProperty("REGIST.INVALID.password");
		
		if(!admin.getPassword().equals(confirmPassword)){
			System.out.println(admin.getPassword()+"::"+confirmPassword);
			return pros.getProperty("REGIST.INVALID.confirmPassword");
		}
		
		if(admin.getEmail()==null || !Pattern.compile(pros.getProperty("REGEX.email")).matcher(admin.getEmail()).matches())
			return pros.getProperty("REGIST.INVALID.email");
		
		//是否验证邮箱是否被使用
		/*
		if(names!=null){
			for(int i=0;i<names[2].length;i++){
				if((names[2][i].toLowerCase()).equals(admin.getEmail().toLowerCase())){
					return pros.getProperty("REGIST.ERROR.email");
				}
			}
		}*/
		
		return null;
	}
}
