package com.HFXBlog.main.bo;

import java.util.List;

import com.HFXBlog.main.model.Article;

public interface ArticleBo {
	
	void addArticle(Article article);
	
	void deleteArticle(Article article);
	
	void updateArticle(Article article);
	
	Article queryArticle(Article article);
	
	List<Article> queryArticles(int fromPage,int toPage);
	
}
