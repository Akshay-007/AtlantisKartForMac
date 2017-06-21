package com.niit.controllers;

import java.util.List;

//import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.model.Category;
import com.niit.service.CategoryService;
import com.niit.service.ProductService;

@Controller
public class HomeController {
	@Autowired
	CategoryService catServ;
	ProductService prodServ;
	
	@RequestMapping("/home")
	public String goHomePage(/*HttpSession session,*/ Model model)
	{
		List<Category> categoryRecordss=catServ.getAllCategories();
		model.addAttribute("categoryList",categoryRecordss);
		return "trialhome";
	}

	
	@RequestMapping("/login")
	public String login(@RequestParam(value="error",required=false) String error,
			@RequestParam(value="logout",required=false) String logout,
			Model model){
		List<Category> categoryRecordss=catServ.getAllCategories();
		model.addAttribute("categoryList",categoryRecordss);
		if(error!=null)
			model.addAttribute("error","Invalid Username or Password! Please enter valid Username and Password.");
		if(logout!=null)
			model.addAttribute("logout","Logged out successfully");
		return "login";
		
	}
	
	@RequestMapping("/AboutUs")
	public String about(Model model)
	{
		List<Category> categoryRecordss=catServ.getAllCategories();
		model.addAttribute("categoryList",categoryRecordss);
		return "aboutus";
	}

}
