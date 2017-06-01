package com.niit.dao;

import java.util.List;

import com.niit.model.Category;
import com.niit.model.Product;

public interface CategoryDao {
	List<Category> getAllCategories();
	List<Product> getProductsByCategory(int id);
}
