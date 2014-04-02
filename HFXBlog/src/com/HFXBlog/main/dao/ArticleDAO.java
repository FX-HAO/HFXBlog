package com.HFXBlog.main.dao;

import java.util.List;

import com.HFXBlog.main.model.Article;

public interface ArticleDAO {
	
	//add article
	void addArticle(Article article);
	
	//delete article
	void deleteArticle(Article article);
	
	//update article
	void updateArticle(Article article);
	
	//query article
	Article queryArticle(Article article);
	
	//query articles of specific pages
	List<Article> queryArticles(int fromPage,int toPage);
	
}
