package com.vamshi.myonlinestorebackend;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.vamshi.dao.UserDAO;
import com.vamshi.model.UserDetail;


public class UserUnitTest 
{
static UserDAO userDAO;
	
	@BeforeClass
	public static void executeFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.vamshi");
		context.refresh();	
		userDAO=(UserDAO)context.getBean("userDAO");
	}
	

    @Ignore
	@Test
	public void registerUserTest()
	{
		UserDetail user=new UserDetail();
		
		user.setUsername("venky");
		user.setPassword("venky456");
		user.setEnabled(true);
		user.setRole("ROLE_admin");
		user.setCustomerName("venkatesh");
		user.setCustomerAddr("kothapet");
		
		assertTrue("Problem in adding User:",userDAO.registerUser(user));
	}


}
