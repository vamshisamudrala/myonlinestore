package com.vamshi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class PageController {
	@RequestMapping("/login")
	public String showLogin(Model m)
	{
		m.addAttribute("pageinfo","Login");
		return "Login";
	}
	@RequestMapping("/register")
	public String showRegister(Model m)
	{
		m.addAttribute("pageinfo","Register");
		return "Register";
	}
	@RequestMapping("/aboutus")
	public String showAboutUs(Model m)
	{
		m.addAttribute("pageinfo","AboutUs");
		return "AboutUs";
	}
	@RequestMapping("/contactus")
	public String hai(Model m)
	{
		m.addAttribute("pageinfo","ContactUs");
		return "Contactus";
	}
	
	
	@RequestMapping("/")
	public String showHeader(Model m)
	{
		m.addAttribute("pageinfo","Header");
		return "Header";
	}
}
