package com.vamshi.myonlinestorebackend;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class GeneralTest 
{
	public static void main(String arg[])
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.vamshi");
		context.refresh();
	}

}
