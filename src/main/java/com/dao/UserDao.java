package com.dao;

import com.entity.User;
import com.mysql.cj.Query;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

public class UserDao {

	private SessionFactory factory = null;
	private org.hibernate.Session session = null;
	private Transaction tx = null;

	public UserDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}

	public boolean saveuser(User user) {
		boolean f = false;
		try {
			session = factory.openSession();
			tx = session.beginTransaction();
			session.save(user);
			tx.commit();
			f = true;
		} catch (Exception e) {
			if (tx != null) {
				f = false;
				e.printStackTrace();

			}
		}
		return f;
	}

	public User login(String email, String password) {
		User u = null;

		session = factory.openSession();

		org.hibernate.Query q = session.createQuery("from User where email=:em and password=:ps");

		q.setParameter("em", email);
		q.setParameter("ps", password);
		u = (User) q.uniqueResult();

		if (u == null) {

		}

		return u;
	}
}
