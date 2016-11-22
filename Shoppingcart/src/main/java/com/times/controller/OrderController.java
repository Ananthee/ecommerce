package com.times.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.google.gson.Gson;
import com.times.dao.OrderDAO;
import com.times.model.Address;
import com.times.model.Cart;
import com.times.model.Order;

@Controller
public class OrderController {
	
	@Autowired
	OrderDAO dao;
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/placeorder",method = RequestMethod.GET)
	public String orderdetails(HttpSession session,Model M) 
	{
		ArrayList<Cart> c=(ArrayList<Cart>)session.getAttribute("mycart");
		int tot=Integer.parseInt(session.getAttribute("gtotal").toString());
		Address user=(Address)session.getAttribute("userdetails1");
		Gson gson = new Gson();
		String jsonInString = gson.toJson(c);
		dao.placeorder(user,tot,jsonInString);
		
		Order o=dao.getorderdetails();
		
		
		Gson g=new Gson();
		String l=g.toJson(c);
		String l1=g.toJson(o);
		System.out.println(l1);
		M.addAttribute("cart", l);
		M.addAttribute("orderdetail", l1);
	
		c.clear();
		session.setAttribute("mycart", c);
		return "receipt";
		
	}
	
	@RequestMapping(value="/receipt",method = RequestMethod.GET)
	public String receipt(HttpSession session,Model M) 
	{
		return "receipt";
	}

}
