package com.niit.test;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import com.niit.model.Category;

public class CategoryDao1 {
	private SessionFactory sessionFactory;
	public List<Category> getAllCategories() {
		Session session=sessionFactory.openSession();
	    Query query=session.createQuery("from Category");
	    List<Category> categoryRecords=query.list();
	    session.close();
	    return categoryRecords;
	}

}
