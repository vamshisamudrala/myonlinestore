package com.vamshi.myonlinestorebackend;

import static org.junit.Assert.assertTrue;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.vamshi.dao.InvoiceDAO;
import com.vamshi.model.Invoice;




public class InvoiceUnitTest 
{
	
	static InvoiceDAO invoiceDAO;
	
	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.vamshi");
		context.refresh();	
		invoiceDAO=(InvoiceDAO)context.getBean("invoiceDAO");
	    
	}

	@Ignore
	@Test
	public void saveOrderTest()
	{
		Invoice invoice=new Invoice();
		invoice.setOrderDate(new java.util.Date());
		invoice.setCartId(4);
		invoice.setShippingAddress("Hyderabad");
		invoice.setTotalAmount(45000);
		invoice.setPaymentType("COD");
		invoice.setUsername("venky");
		assertTrue("Problem in adding invoice:",invoiceDAO.saveOrder(invoice));
		
	}
}
