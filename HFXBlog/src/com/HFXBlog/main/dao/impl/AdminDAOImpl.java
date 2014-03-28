package com.HFXBlog.main.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.HFXBlog.main.dao.AdminDAO;
import com.HFXBlog.main.model.Admin;

public class AdminDAOImpl extends HibernateDaoSupport implements AdminDAO{

	public void addAdmin(Admin admin) {
		getHibernateTemplate().save(admin);
	}

	public void updateAdmin(Admin admin) {
		org.hibernate.Session session=getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery("update hfxblog_admin set PASSWORD=:password,EMAIL=:email where ADMINNAME=:adminname");
		query.setParameter("password", admin.getPassword());
		query.setParameter("email", admin.getEmail());
		query.setParameter("adminname", admin.getAdminname());
		query.executeUpdate();
		session.close();
	}

	public void deleteAdmin(Admin admin) {
		org.hibernate.Session session=getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery("delete hfxblog_admin where ADMINNAME=:adminname");
		query.setParameter("adminname", admin.getAdminname());
		query.executeUpdate();
		session.close();
	}

	public List<Admin> queryAll() {
		return getHibernateTemplate().find("from hfxblog_admin");
	}

	public Admin queryByName(Admin admin) {
		org.hibernate.Session session=getHibernateTemplate().getSessionFactory().openSession();
		Query query=session.createQuery("from Customer where ADMINNAME=:adminname");
		query.setParameter("adminname", admin.getAdminname());
		List list=query.list();
		Admin newadmin=(Admin) list.get(0);
		session.close();
		return newadmin;
	}
	
	
	
}
