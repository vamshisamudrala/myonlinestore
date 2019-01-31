package com.vamshi.myonlinestorebackend;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.vamshi.dao.ProductDAO;
import com.vamshi.model.Product;


public class ProductUnitTest 
{
  static ProductDAO productDAO;
	
	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.vamshi");
		context.refresh();	
		productDAO=(ProductDAO)context.getBean("productDAO");
	}
	
	
    @Ignore
	@Test
	public void addProductTest()
	{
		Product product=new Product();
		product.setProductName("Lenova Core");
		product.setProductDesc("Lenova Brand Laptops");
		product.setPrice(45000);
		product.setStock(15);
		product.setCategoryId(1);
		product.setSupplierId(1);
		
		assertTrue("Problem in Adding Product",productDAO.addProduct(product));
	}

}


