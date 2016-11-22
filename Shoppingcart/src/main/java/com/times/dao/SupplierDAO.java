package com.times.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.times.model.Supplier;

@Transactional
@Repository
public class SupplierDAO {

	@Autowired
	SessionFactory sessionFactory;
	public void addSupplier(Supplier supplierId)
	 {
		 Session session=sessionFactory.openSession();
		 Transaction tx=session.getTransaction();
		 tx.begin();
		 session.save(supplierId);
		 session.flush();
		 tx.commit();	 
	 }
	public List showSupplier()
	{
		Session s=sessionFactory.openSession();
		List showsup = s.createQuery("FROM Supplier").list();
		return showsup;
	}
	
	public void editSupplier(Supplier s)
	{
		Session session=sessionFactory.openSession();
		Transaction tx=	session.getTransaction();
		tx.begin();
		Supplier sup=(Supplier)session.get(Supplier.class,s.getSupplierId());
		sup.setSupplierName(s.getSupplierName());
		sup.setSupplierAddress(s.getSupplierAddress());
		session.update(sup);
		tx.commit();
		
	}
	
	public void delSupplier(String samplesup)
	{
		Session session = sessionFactory.openSession();
	    Transaction tx = session.getTransaction();
	    tx.begin();
	    Supplier s=(Supplier)session.get(Supplier.class,samplesup);
	    System.out.println(s.getSupplierId());
	    session.delete(s); 
	    session.flush();
	    tx.commit();
	}
	public Supplier viewSupplier(String sup )
	 {
		Session session = sessionFactory.openSession();
		Transaction tx = session.getTransaction();
		tx.begin();
	    Supplier s=(Supplier)session.get(Supplier.class,sup);
	    tx.commit();
	    return s;
		 
	 }

}
