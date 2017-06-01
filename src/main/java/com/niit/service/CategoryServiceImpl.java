package com.niit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.niit.dao.CategoryDao;
import com.niit.model.Category;
import com.niit.model.Product;

@Service
public class CategoryServiceImpl implements CategoryService {
	@Autowired
private CategoryDao categoryDao;
	public List<Category> getAllCategories() {
		return categoryDao.getAllCategories();
	}
	public List<Product> getProductsByCategory(int id)
	{
		return categoryDao.getProductsByCategory(id);
	}

}
