package com.HFXBlog.main.action;

import java.util.Enumeration;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.ServletActionContext;
import it.sauronsoftware.base64.Base64;

import com.HFXBlog.main.model.Article;
import com.HFXBlog.main.bo.ArticleBo;
import javax.servlet.http.HttpServletRequest;

public class PostAction extends ActionSupport{
	private Article article;
	private ArticleBo articleBo;
	
	public void setArticleBo(ArticleBo articleBo){
		this.articleBo=articleBo;
	}
	
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
	
	public String addArticle() throws Exception {
		articleBo.addArticle(article);
		return "success";
	}
	
	public String index() throws Exception {
		HttpServletRequest request=ServletActionContext.getRequest();
		int page=0;
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		else
		{
			page=0;
		}
		List<Article> list=articleBo.queryArticles(page, page+10);
		request.setAttribute("page", page);
		request.setAttribute("articles", list);
		request.setAttribute("nums", list.size());
		return "success";
	}
	
	public String article() throws Exception {
		HttpServletRequest request=ServletActionContext.getRequest();
		String title=Base64.decode(request.getParameter("title").replace(" ", "+"));
		System.out.println(title);
		if(title==null){
			return "success";
		}
		article=new Article();
		article.setTitle(title);
		Article result=articleBo.queryArticle(article);
		if(result!=null){
			result.setReadership(result.getReadership()+1);
			articleBo.updateArticle(result);
			request.setAttribute("article", result);
		}
		return "success";
	}
	
}
