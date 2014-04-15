package com.HFXBlog.main.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.HFXBlog.main.dao.ArticleDAO;
import com.HFXBlog.main.model.Article;

public class ArticleDAOImpl extends HibernateDaoSupport implements ArticleDAO{

	public void addArticle(Article article) {
		getHibernateTemplate().save(article);
	}

	public void deleteArticle(Article article) {
		org.hibernate.Session session=getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery("delete Article where TITLE=:title");
		query.setParameter("title", article.getTitle());
		query.executeUpdate();
		session.close();
	}

	public void updateArticle(Article article) {
		org.hibernate.Session session=getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery("update Article set CONTENT=:content,READERSHIP=:readership where TITLE=:title");
		query.setParameter("content", article.getContent());
		query.setParameter("readership", article.getReadership());
		query.setParameter("title", article.getTitle());
		query.executeUpdate();
		session.close();
	}

	public Article queryArticle(Article article) {
		org.hibernate.Session session=getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery("from Article where TITLE=:title");
		query.setParameter("title", article.getTitle());
		List list=query.list();
		if(list.size()==0)
			return null;
		Article newarticle=(Article) list.get(0);
		session.close();
		return newarticle;
	}

	public List<Article> queryArticles(int fromPage, int toPage) {
		org.hibernate.Session session=getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery("from Article order by DATE DESC");
		query.setFirstResult(fromPage-1);
		query.setMaxResults(toPage-fromPage);
		List list=query.list();
		session.close();
		return list;
	}
	
	public List<Article> hotestArticles(int maxPages){
		org.hibernate.Session session=getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery("from Article order by (readership+dateWeight(title,2,10)) DESC");
		query.setFirstResult(0);
		query.setMaxResults(maxPages);
		List list=query.list();
		session.close();
		return list;
	}
	
}
