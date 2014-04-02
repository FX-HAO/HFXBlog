package com.HFXBlog.main.action;

import com.opensymphony.xwork2.ActionSupport;

import com.HFXBlog.main.model.Article;
import com.HFXBlog.main.bo.ArticleBo;

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
		System.out.println("addArticle is called!");
		articleBo.addArticle(article);
		return "success";
	}
	
}
