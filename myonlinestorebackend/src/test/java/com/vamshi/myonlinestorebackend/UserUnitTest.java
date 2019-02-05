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
		
		user.setUsername("ka.paul");
		user.setPassword("paul135");
		user.setEnabled(true);
		user.setRole("ROLE_ADMIN");
		user.setCustomerName("ka paul");
		user.setCustomerAddr("Andhra Pradesh");
		
		assertTrue("Problem in adding User:",userDAO.registerUser(user));
	}


}
