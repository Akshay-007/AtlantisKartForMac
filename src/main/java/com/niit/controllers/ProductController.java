package com.niit.controllers;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.SocketUtils;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.niit.model.Category;
import com.niit.model.Product;
import com.niit.service.CategoryService;
import com.niit.service.ProductService;

@Controller
public class ProductController {
	@Autowired
private ProductService productService;
	@Autowired
private CategoryService categoryService;
@RequestMapping("admin/product/productform")
public String getProductForm(Model model){
	model.addAttribute("product",new Product());
	List<Category> categoryRecords=categoryService.getAllCategories();
	for(Category c:categoryRecords)
	{
		System.out.println(c.getCid());
	}
	model.addAttribute("categoryrecords",categoryRecords);
	return "productform";
}

	
@RequestMapping("admin/product/saveproduct")
public String saveProduct(@Valid @ModelAttribute(name="product") Product product,BindingResult result){
	if(result.hasErrors())
		return "productform";
	System.out.println("After validation");
	productService.saveProduct(product);
	MultipartFile image=product.getImage();
	if(image!=null && !image.isEmpty()){
	Path path=Paths.get
("C:/Maven_workspace/AtlantisKart/src/main/webapp/resources/theme1/images/"+product.getId()+".png");
	try {
		image.transferTo(new File(path.toString()));
	} catch (IllegalStateException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	} catch (IOException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	}
	return "redirect:/all/product/productlist";
}

@RequestMapping("/all/product/productlist")
public String getAllProducts(Model model)
{
	List<Product> products=productService.getAllProducts();
	model.addAttribute("products",products);
	return "productlist";
}
@RequestMapping("/all/product/viewproduct/{id}")
public String viewProduct(@PathVariable int id, Model model)
{
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
	return "viewproduct";
}
@RequestMapping("/admin/product/deleteproduct/{id}")
public String deleteProduct(@PathVariable int id){
	productService.deleteProduct(id);
	return "redirect:/all/product/productlist";
}
}
