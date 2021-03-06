package com.HFXBlog.main.services;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.URL;
import java.util.Properties;

import com.HFXBlog.main.services.Mail;

public class SendMail {
	private Mail mail;

	public void setMail(Mail mail) {
		this.mail = mail;
	}
	
	public void send(String toEmail,String adminname,String url) throws IOException{
		URL u=SendMail.class.getResource("/com/HFXBlog/resources/config/properties/email.properties");
		File file=new File(u.getFile());
		FileInputStream in=new FileInputStream(file);
		Properties pros=new Properties();
		pros.load(in);
		in.close();
		String text=String.format(pros.getProperty("EMAIL.REGIST.text"),adminname,url,adminname);
		String subject=pros.getProperty("EMAIL.REGIST.subject");
		String from=pros.getProperty("EMAIL.REGIST.from");
		mail.sendMail(text,subject,from,toEmail);
	}
	
}
