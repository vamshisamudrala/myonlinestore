package com.vamshi.daoimpl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.vamshi.dao.CategoryDAO;
import com.vamshi.model.Category;
@Repository("categoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO 
{
	@Autowired
	SessionFactory sessionFactory;

	
	public boolean addCategory(Category category) 
	{
		try
		{
			sessionFactory.getCurrentSession().save(category);
			return true;
			
		}
		catch(Exception e)
		{
			return false;
			
		}
		
	}



	public boolean deleteCategory(Category category) 
	{
		try
		{
			sessionFactory.getCurrentSession().delete(category);
			return true;
			
		}
		catch(Exception e)
		{
			return false;
			
		}
		
	}

	@Override
	public boolean updateCategory(Category category) 
	{
		try
		{
			sessionFactory.getCurrentSession().update(category);
			return true;
			
		}
		catch(Exception e)
		{
			return false;
			
		}
		
		
	}



	public List<Category> listCategories() 
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Category");
		List<Category> listCategories=query.list();
		session.close();
		return  listCategories;
	}



	public Category getCategory(int categoryID) 
	{
		Session session=sessionFactory.openSession();
		Category category=session.get(Category.class,categoryID);
		session.close();
		return category;
		
		
	
	}
	
}
