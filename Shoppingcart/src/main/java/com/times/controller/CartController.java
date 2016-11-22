package com.times.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.times.dao.CartDAO;
import com.times.dao.ProductDAO;
import com.times.dao.RegisterDAO;
import com.times.model.Address;
import com.times.model.Cart;
import com.times.model.LoginCredentials;
import com.times.model.Product;
import com.times.model.RegisterDetails;

@Controller
public class CartController {

	@Autowired
	CartDAO dao1;
	
	@Autowired
	ProductDAO dao;
	
	@Autowired
	RegisterDAO n;
	
	@RequestMapping(value="/payment",method = RequestMethod.GET)
	public String payment(HttpSession session,Model M) 
	{
		return "payment";
	}
	
	
	public int getGrandTotal(ArrayList<Cart> item)
	{
		ListIterator<Cart> itr=item.listIterator();
		int gtotal=0; 
		while(itr.hasNext())
		{
			Cart ob=(Cart)itr.next();
			gtotal=gtotal+(ob.getQuantity()*ob.getPrice());
		}
		return gtotal;
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/checkout",method = RequestMethod.GET)
	public String checkout(HttpSession session,Model M) 
	{
		ArrayList<Cart> cartobj=(ArrayList<Cart>)session.getAttribute("mycart");
		Gson g=new Gson();
		String l=g.toJson(cartobj);
		M.addAttribute("cart", l);
		session.setAttribute("mycart", cartobj);
		// String UserName=session.getAttribute("UserLoggedIn").toString();
		// System.out.println(UserName);
		// LoginCredentials user=n.getInfo(UserName);
		String l1=g.toJson(l);
		System.out.println(l1);
		M.addAttribute("user", l1);		
		session.setAttribute("userdetails1",l);
		session.setAttribute("userdetails",l1);
		session.setAttribute("gtotal",getGrandTotal(cartobj));
		return "checkout";
	}
	
	@RequestMapping(value="/billingAddress",method = RequestMethod.GET)
	public ModelAndView billingAddress(HttpSession session)
	{
		//System.out.println("A");
		
		String UserName=session.getAttribute("Username").toString();
		// System.out.println("A");
		RegisterDetails user=n.getInfo(UserName);
		// System.out.println("b");
		Address a=new Address();
		// System.out.println("c");
		a.setName(user.getUserName());
		// System.out.println("d");
		a.setNumber(user.getContactNo());
		// System.out.println("e");
		a.setEmail(user.getEmailId());
		// System.out.println("f");
		ModelAndView mv=new ModelAndView("billingAddress","Address",a);
		// System.out.println("g");
		return mv;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(value="/AddToCart",method = RequestMethod.GET)
	public String AddToCart(@RequestParam("addpid")String id,HttpSession session,Model M) 
	{
		Product p=dao.showProduct(id);
		Cart c=new Cart();
		c.setProductId(p.getProductId());
		c.setProductName(p.getProductName());
		c.setPrice(p.getPrice());
		c.setQuantity(1);
		c.setTotal(p.getPrice()); 
		ArrayList<Cart> cartobj=(ArrayList<Cart>)session.getAttribute("mycart");
		cartobj.add(c);
		Gson g=new Gson();
		String l=g.toJson(cartobj);
		session.setAttribute("mycart", cartobj);
		M.addAttribute("cart", l);
		M.addAttribute("cartitem",cartobj);
		session.setAttribute("gtotal",getGrandTotal(cartobj));
		return "cart";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/cart",method = RequestMethod.GET)
	public ModelAndView showCart(HttpSession session) 
	{
		ArrayList<Cart> ld=(ArrayList<Cart>)session.getAttribute("mycart");
		session.setAttribute("mycart",ld);
		ModelAndView mv = new ModelAndView("cart", "cart", new Cart());
		Gson gsonli = new Gson();
		String gs = gsonli.toJson(ld);
		mv.addObject("cart",gs);
		mv.addObject("cartitem",ld);
		session.setAttribute("gtotal",getGrandTotal(ld));
		return mv;
		
	}
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/removeitem",method = RequestMethod.GET)
	public ModelAndView removeCart(@RequestParam("productId") String id,HttpSession session) 
	{
		ArrayList<Cart> ld=(ArrayList<Cart>)session.getAttribute("mycart");
		ListIterator<Cart> lit=(ListIterator<Cart>) ld.listIterator();
		while(lit.hasNext())
		{
		Cart d=lit.next();
		if(d.getProductId()==id)
		{
		ld.remove(ld.indexOf(d));
		break;
		}
		}
		session.setAttribute("mycart",ld);
		ModelAndView mv = new ModelAndView("cart", "cart", new Cart());
		Gson gsonli = new Gson();
		String gs = gsonli.toJson(ld);
		mv.addObject("cart",gs);
		mv.addObject("cartitem",ld);
		session.setAttribute("gtotal",String.valueOf(getGrandTotal(ld)));
		return mv;
	}

}