package com.times.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.times.model.Address;
import com.times.model.Order;

@Repository
public class OrderDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public void placeorder(Address a,int tot,String cart)
	{
		Session s=sessionFactory.openSession();
		Transaction tx=s.getTransaction();		
		tx.begin();
		Order o=new Order();
		o.setAddress(a.getAddress());
		o.setEmailid(a.getEmail());
		o.setMobilenumber(a.getNumber());
		o.setName(a.getName());
		o.setPdate(new java.util.Date());
		o.setTotal(tot);
		o.setCart(cart);
		s.save(o);
		tx.commit();
		s.flush();
		s.clear();
		s.close();
	}
	
		public Order getorderdetails()
		{
			Session s=sessionFactory.openSession();
			Transaction tx=s.getTransaction();
			tx.begin();
			Order c=(Order)s.createQuery("from Orders o order by o.orderid desc limt 1").list().get(0);
			System.out.println(c);
			tx.commit();
			s.flush();
			s.clear();
			s.close();
			return c;
		}
}
