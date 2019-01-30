package com.vamshi.dao;

import com.vamshi.model.Invoice;

public interface InvoiceDAO 
{
	public boolean saveOrder(Invoice invoice);
	public boolean updateCart(String username);

}
