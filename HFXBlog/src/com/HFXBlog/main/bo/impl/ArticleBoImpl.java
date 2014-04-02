package com.HFXBlog.main.bo.impl;

import java.util.List;

import com.HFXBlog.main.bo.ArticleBo;
import com.HFXBlog.main.dao.ArticleDAO;
import com.HFXBlog.main.model.Article;

public class ArticleBoImpl implements ArticleBo{

	private ArticleDAO articleDAO;
	
	public void setArticleDAO(ArticleDAO articleDAO){
		this.articleDAO=articleDAO;
	}
	
	public void addArticle(Article article) {
		articleDAO.addArticle(article);
	}

	public void deleteArticle(Article article) {
		articleDAO.deleteArticle(article);
	}

	public void updateArticle(Article article) {
		articleDAO.updateArticle(article);
	}

	public Article queryArticle(Article article) {
		return articleDAO.queryArticle(article);
	}

	public List<Article> queryArticles(int fromPage, int toPage) {
		return articleDAO.queryArticles(fromPage, toPage);
	}

}
