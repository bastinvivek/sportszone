package com.niit.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.dao.CategoryDao;
import com.niit.model.Category;
import com.niit.model.Product;

@Repository
public class CategoryDaoImpl implements CategoryDao {
@Autowired

	private SessionFactory sessionFactory;
	public void saveCategory(Category category) {	
	Session session=sessionFactory.openSession();
	Transaction transaction=session.beginTransaction();
	System.out.println("PRODUCT ID BEFORE INSERTION" + category.getCid());
	session.save(category);
	System.out.println("PRODUCT ID AFTER INSERTION" + category.getCid());
	transaction.commit();
	session.close();
}

public List<Category> getAllCategories() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Category");
		List<Category> categories=query.list();
		session.close();
		return categories;
	}
		
	}