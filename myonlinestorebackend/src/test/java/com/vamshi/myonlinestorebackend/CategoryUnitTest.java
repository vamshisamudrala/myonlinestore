package com.vamshi.myonlinestorebackend;

import static org.junit.Assert.*;

import java.util.List;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.vamshi.dao.CategoryDAO;
import com.vamshi.model.Category;

public class CategoryUnitTest 
{
	static CategoryDAO categoryDAO;
	@BeforeClass
	public static void exeuteFirst()
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.vamshi");
		context.refresh();
		categoryDAO=(CategoryDAO)context.getBean("categoryDAO");
	}

	@Test
	public void addCategoryTest()
	{
		Category category=new Category();
		category.setCategoryName("Mobiles");
		category.setCategoryDesc("Electronics");
		assertTrue("Problem in adding Category",categoryDAO.addCategory(category));
			
	}
	@Ignore
	@Test
	public void deleteCategoryTest()
	{
		Category category=categoryDAO.getCategory(2);
		assertTrue("Problem in Deleting Category:",categoryDAO.deleteCategory(category));
	}
	
	@Test
	public void updateCategoryTest()
	{
		Category category=categoryDAO.getCategory(3);
		category.setCategoryName("Television");
		category.setCategoryDesc("Electronics");
		assertTrue("Problem in Updating the Category",categoryDAO.updateCategory(category));
	}
	
	@Test
	public void listCategoriesTest()
	{
		List<Category> listCategories=categoryDAO.listCategories();
		assertTrue("Problem in Listing Categories:",listCategories.size()>0);
		
		for(Category category:listCategories)
		{
			System.out.println("Category ID:"+category.getCategoryID());
			System.out.println("Category Name:"+category.getCategoryName());
			System.out.println("Category Desc:"+category.getCategoryDesc());
		}
	}

	
}
