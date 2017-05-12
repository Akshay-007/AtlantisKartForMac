package com.niit.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/homepage")
	public String goHomePage()
	{
		return "home";
	}
	@RequestMapping("/Welcome")
	public String goPage()
	{
		return "home1";
	}

}
