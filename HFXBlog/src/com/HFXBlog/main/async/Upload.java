package com.HFXBlog.main.async;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Upload extends HttpServlet{
	
	public void doGet(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		doPost(request,response);
	}
	
	public void doPost(HttpServletRequest request,HttpServletResponse response)
			throws ServletException,IOException{
		BufferedInputStream fileIn = new BufferedInputStream(request.getInputStream()); 
		String filename = request.getParameter("fileName"); 
				   
		byte[] buf = new byte[1024];
		File file = new File(request.getSession().getServletContext().getRealPath("")+"/upload/blog/article/"+filename);
		BufferedOutputStream fileOut = new BufferedOutputStream(new FileOutputStream(file));
		while (true) {
			int bytesIn = fileIn.read(buf, 0, 1024);  				      
			if (bytesIn == -1) {
				break; 
			}
			else { 
				fileOut.write(buf, 0, bytesIn); 
			}
		}
		
		fileOut.flush(); 
		fileOut.close();
		response.getWriter().print(file.getAbsolutePath());
	}
	
}
