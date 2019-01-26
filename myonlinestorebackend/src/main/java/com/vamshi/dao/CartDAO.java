package com.vamshi.dao;

import java.util.List;

import com.vamshi.model.Cart;

public interface CartDAO 
{
	public boolean addCart(Cart cart);
	public boolean deleteCart(Cart cart);
	public boolean updateCart(Cart cart);
	public Cart getCart(int cardID);
	
	public List<Cart> listCart(String username);

}
