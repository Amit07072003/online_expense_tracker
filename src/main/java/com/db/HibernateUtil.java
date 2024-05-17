package com.db;

import java.util.Properties;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import com.entity.Expense;
import com.entity.User;

public class HibernateUtil {
	private static SessionFactory sessionFactory;

	public static SessionFactory getSessionFactory() {

		if (sessionFactory == null) {

			Configuration configuration = new Configuration();
			try {

				Properties properties = new Properties();

				properties.put(Environment.DRIVER, "com.mysql.cj.jdbc.Driver");
				properties.put(Environment.URL, "jdbc:postgresql://localhost:5432/expense_tracker_db_hadk");
				properties.put(Environment.USER, "expense_tracker_db_hadk_user");
				properties.put(Environment.PASS, "3G6cXby1fhbC9lqzzvb6xwQ4F09Y1in2");
				properties.put(Environment.DIALECT, "org.hibernate.dialect.PostgreSQLDialect");
				properties.put(Environment.HBM2DDL_AUTO, "update");
				properties.put(Environment.SHOW_SQL, true);

				configuration.setProperties(properties);

				configuration.addAnnotatedClass(User.class);

				configuration.addAnnotatedClass(Expense.class);

				ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
						.applySettings(configuration.getProperties()).build();

				sessionFactory = configuration.buildSessionFactory(serviceRegistry);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}

		return sessionFactory;
	}
}
