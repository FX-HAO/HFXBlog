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
		
		if(!Pattern.compile(pros.getProperty("REGEX.nickname")).matcher(admin.getNickname()).matches())
			return pros.getProperty("REGIST.INVALID.nickname");
		
		if(!Pattern.compile(pros.getProperty("REGEX.adminname")).matcher(admin.getAdminname()).matches())
			return pros.getProperty("REGIST.INVALID.adminname");
		
		if(!Pattern.compile(pros.getProperty("REGEX.password")).matcher(admin.getPassword()).matches())
			return pros.getProperty("REGIST.INVALID.password");
		
		if(!admin.getPassword().equals(confirmPassword))
			return pros.getProperty("REGIST.INVALID.confirmPassword");
		
		if(!Pattern.compile(pros.getProperty("REGEX.email")).matcher(admin.getEmail()).matches())
			return pros.getProperty("REGIST.INVALID.email");
		
		for(int i=0;i<names[0].length;i++){
			if(names[0][i].equals(admin.getNickname())){
				return pros.getProperty("REGIST.ERROR.nickname");
			}	
		}
		for(int i=0;i<names[1].length;i++){
			if(names[1][i].equals(admin.getAdminname())){
				return pros.getProperty("REGIST.ERROR.adminname");
			}
		}
		
		return null;
	}
}
