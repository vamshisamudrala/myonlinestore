package com.vamshi.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.vamshi.dao.CartDAO;
import com.vamshi.dao.ProductDAO;
import com.vamshi.dao.UserDAO;
import com.vamshi.model.Cart;

@Controller
public class PaymentController 
{
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	UserDAO userDAO;
	
	@RequestMapping("/checkout")
	public String chechout(Model m,HttpSession session)
	{
		String username=(String)session.getAttribute("username");
		List<Cart> cartList=cartDAO.listCart(username);
		m.addAttribute("cartList",cartList);
		m.addAttribute("grandTotal",this.getGrandTotal(cartList));
		String address=userDAO.getUser(username).getCustomerAddr();
		m.addAttribute("address",address);
		return "OrderConfirm";
	}
	
	

}
