package com.niit.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Category;
import com.niit.model.Product;
@Repository
public class CategoryDaoImpl implements CategoryDao {
	@Autowired
private SessionFactory sessionFactory;
	public List<Category> getAllCategories() {
		Session session=sessionFactory.openSession();
	    Query query=session.createQuery("from Category");
	    List<Category> categoryRecords=query.list();
	    session.close();
	    return categoryRecords;
	}

	

	public List<Product> getProductsByCategory(int id)
	{
		String hql="from Product P where cid='" + id + "'";
		Session session=sessionFactory.openSession();
		Query query=session.createQuery(hql);
		List<Product> ProductRecords=query.list();
		System.out.println(ProductRecords);
		session.close();
		return ProductRecords;
	}
	
}
