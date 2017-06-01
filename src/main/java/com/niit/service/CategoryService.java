package com.niit.service;

import java.util.List;

import com.niit.model.Category;
import com.niit.model.Product;

public interface CategoryService {
	List<Category> getAllCategories();
	List<Product> getProductsByCategory(int id);
}
