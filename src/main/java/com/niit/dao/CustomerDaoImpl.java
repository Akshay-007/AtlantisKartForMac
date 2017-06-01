package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.Authorities;
import com.niit.model.Cart;
import com.niit.model.Customer;
import com.niit.model.Users;
@Repository
public class CustomerDaoImpl implements CustomerDao {
    @Autowired
    SessionFactory sessionFactory;
	public void saveCustomer(Customer customer) {
		Users users=customer.getUsers();
		users.setEnabled(true);
		Authorities authorities=new Authorities();
		authorities.setUsername(users.getUsername());
		authorities.setRole("ROLE_USER");
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.save(authorities);
		Cart cart=new Cart();
		cart.setCustomer(customer);
		customer.setCart(cart);
		session.save(customer);
		session.flush();
		transaction.commit();
		session.close();
	}

	public List<Customer> getCustomers() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Customer");
		List<Customer> customers=query.list();
		session.close();
		return customers;
	}

}
