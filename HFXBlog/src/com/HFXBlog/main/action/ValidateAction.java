package com.HFXBlog.main.action;

import com.opensymphony.xwork2.ActionSupport;
//使用了ModelDriven导致Json传值为空
//import com.opensymphony.xwork2.ModelDriven;
import org.apache.struts2.ServletActionContext;
import javax.servlet.http.*;
import it.sauronsoftware.base64.Base64;

import com.HFXBlog.main.model.Admin;
import com.HFXBlog.main.bo.AdminBo;

//registion of action
@SuppressWarnings("serial")
public class ValidateAction extends ActionSupport implements java.io.Serializable{
	
	private Admin admin=new Admin();
	private AdminBo adminBo;
	private String confirmPassword;
	//ajax返回结果给客户端
	private String error;
	
	public void setConfirmPassword(String confirmPassword) {
		this.confirmPassword = confirmPassword;
	}
	
	public String getError() {
		return error;
	}
	
	public void setAdminBo(AdminBo adminBo) {
		this.adminBo=adminBo;
	}
	
	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}

	public String register() throws Exception{
		HttpServletRequest request=ServletActionContext.getRequest();
		if(request.getParameter("arguments")==null){
			validateAJAX();
			if(error!=null)
				return "input";
			String info="adminname="+admin.getAdminname()+"&password="+admin.getPassword()+"&email="+admin.getEmail()+"&nickname="+admin.getNickname()+"&confirmPassword="+confirmPassword+"&activate=1";
			String saltedInfo=Base64.encode(info);
			adminBo.SendMail(admin.getEmail(), admin.getAdminname(), "http://localhost/HFXBlog/admin/addAdminAction.action?arguments="+saltedInfo);
		}
		else{
			String[] strs=Base64.decode(request.getParameter("arguments")).split("&");
			String activate=strs[strs.length-1].split("=")[1];
			admin.setDate(new java.sql.Date(new java.util.Date().getTime()));
			if(Integer.parseInt(activate)==1){
				admin.setAdminname(strs[0].split("=")[1]);
				admin.setPassword(strs[1].split("=")[1]);
				admin.setEmail(strs[2].split("=")[1]);
				admin.setNickname(strs[3].split("=")[1]);
				confirmPassword=strs[4].split("=")[1];
				validateAJAX();
				if(error!=null)
					return "input";
				adminBo.addAdmin(admin);
			}
		}
		return "success";
	}
	
	public String validateAJAX(){
		try{
			error=adminBo.registerValidate(admin, confirmPassword);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return "success";
	}
	
	public String login() throws Exception {
		Admin data=adminBo.loginValidate(admin);
		if(data==null){
			addActionError("Incorrect username or password.");
			return "input";
		}
		ServletActionContext.getRequest().setAttribute("nickname", admin.getAdminname());
		ServletActionContext.getRequest().getSession(true).setAttribute("admin", admin);
		return "success";
		
	}
	
}
