package com.niit.controllers;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.CustomerDao;
import com.niit.model.Category;
import com.niit.model.Customer;
import com.niit.model.Product;
import com.niit.service.CategoryService;
import com.niit.service.ProductService;

@Controller
public class ProductController {
	@Autowired
private ProductService productService;
	@Autowired
private CategoryService categoryService;
@Autowired	
private CustomerDao customerDao;
	
@RequestMapping("admin/product/productform")
public String getProductForm(Model model){
	model.addAttribute("product",new Product());
	//List<Category> categoryRecords=categoryService.getAllCategories();
	/*for(Category c:categoryRecords)
	{
		System.out.println(c.getCid());
	}*/
	//model.addAttribute("categoryrecords",categoryRecords);
	List<Category> categoryRecordss=categoryService.getAllCategories();
	model.addAttribute("categoryList",categoryRecordss);
	return "productform";
}

@RequestMapping("/admin/product/editproduct/{id}")
public String editProduct(@PathVariable int id,Model model){
	Product product=productService.getProductById(id);
	//[product attribute - [4,'Toy','descr','mnat',7800,12,..]
	model.addAttribute("product",product);
	List<Category> categoryRecords=categoryService.getAllCategories();
	model.addAttribute("categoryrecords",categoryRecords);
	List<Category> categoryRecordss=categoryService.getAllCategories();
	model.addAttribute("categoryList",categoryRecordss);
	return "productform";
}

	
@RequestMapping("/admin/product/saveproduct")
public String saveProduct(@Valid @ModelAttribute(name="product") Product product,BindingResult result,Model model){
	if(result.hasErrors())
	{
		List<Category> categoryRecordss=categoryService.getAllCategories();
		model.addAttribute("categoryList",categoryRecordss);
		if(product.getCategory()==null)
			model.addAttribute("mssg","Category is mandatory!");
		return "productform";
	}
		
	System.out.println("After validation");
	productService.saveOrUpdateProduct(product);
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
	List<Category> categoryRecordss=categoryService.getAllCategories();
	model.addAttribute("categoryList",categoryRecordss);
	
	User activeUser = (User) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	if(activeUser!=null)
	{
	List<Customer> customers=customerDao.getCustomers(); 
	for(Customer c:customers)
	{
		if(c.getUsers().getUsername().equals(activeUser.getUsername()))
		{
			model.addAttribute("cus",c.getCart());
		}
	}
	}
	return "productlist";
}
@RequestMapping("/all/product/viewproduct/{id}")
public String viewProduct(@PathVariable int id, Model model)
{
	Product product=productService.getProductById(id);
	model.addAttribute("product",product);
	List<Category> categoryRecordss=categoryService.getAllCategories();
	model.addAttribute("categoryList",categoryRecordss);
	return "viewproduct";
}
@RequestMapping("/admin/product/deleteproduct/{id}")
public String deleteProduct(@PathVariable int id){
	productService.deleteProduct(id);
	return "redirect:/all/product/productlist";
}
@RequestMapping("/viewproductundercat/{id}")
public String productList(@PathVariable int id,Model model)
{
	List<Category> categoryRecordss=categoryService.getAllCategories();
	
	model.addAttribute("categoryList",categoryRecordss);
	List<Product> products1=categoryService.getProductsByCategory(id);
	model.addAttribute("products", products1);
	return "home2";
}
@RequestMapping("/all/product/productsByCategory")
public String getProductsByCategory(@RequestParam(name="searchCondition") String searchCondition,
		Model model,HttpSession session)
{
	session.setAttribute("categoryList", categoryService.getAllCategories());
	List<Product> products=productService.getAllProducts();
	model.addAttribute("products",products);
	model.addAttribute("searchCondition",searchCondition);
	return "productlist";
}
}
