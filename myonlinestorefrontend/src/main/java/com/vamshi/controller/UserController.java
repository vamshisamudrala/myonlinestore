package com.vamshi.controller;

import java.util.Collection;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.vamshi.dao.ProductDAO;
import com.vamshi.dao.UserDAO;
import com.vamshi.model.Product;
import com.vamshi.model.UserDetail;


@Controller
public class UserController {

	 
	 @Autowired
	  ProductDAO productDAO;
	 
	 @Autowired
	 UserDAO userDAO;
		
	 @RequestMapping(value="/userhome")
		public String showUserHome(Model m,HttpSession session)
		{
			m.addAttribute("pageinfo", "Product Catalog");
			List<Product> listProducts=productDAO.listProducts();
			m.addAttribute("productList", listProducts);
			
			return "UserHome";
		}
	     
	 @RequestMapping(value = "/addUser", method = RequestMethod.POST)
		public String addUser(@ModelAttribute("user")UserDetail userDetail, Model m, String customerAddr, String customerName, String username, String password, String role)
	 {
			UserDetail userdetail=new UserDetail();
			userdetail.setCustomerName(customerName);
			userdetail.setUsername(username);
			userdetail.setCustomerAddress(customerAddr);
			userdetail.setPassword(password);
			userdetail.setRole(role);
			userDAO.registerUser(userdetail);
			
			
	    return "Login";
	 }
	 
	
		
		@RequestMapping(value="/login_success", method=RequestMethod.POST)
		public String loginCheck(Model m,HttpSession session)
		{
			String page="";
			boolean loggedIn=false;
			
			SecurityContext securityContext=SecurityContextHolder.getContext();
			Authentication authentication=securityContext.getAuthentication();
			
			String username=authentication.getName();
			
			Collection<GrantedAuthority> roles=(Collection<GrantedAuthority>)authentication.getAuthorities();
		
			for(GrantedAuthority role:roles)
			{
				session.setAttribute("role", role.getAuthority());
				
				if(role.getAuthority().equals("ROLE_ADMIN"))
				{
					loggedIn=true;
					page="AdminHome";
					session.setAttribute("loggedIn", loggedIn);
					session.setAttribute("username", username);
				}
				else
				{
					m.addAttribute("pageinfo", "User Home");
					List<Product> listProducts=productDAO.listProducts();
					m.addAttribute("productList", listProducts);
					
					loggedIn=true;
					page="UserHome";
					session.setAttribute("loggedIn", loggedIn);
					session.setAttribute("username", username);
				}
			}
			
			
			return page;
		}
			

}
