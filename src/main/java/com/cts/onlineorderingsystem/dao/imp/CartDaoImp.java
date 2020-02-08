package com.cts.onlineorderingsystem.dao.imp;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.cts.onlineorderingsystem.dao.CartDao;
import com.cts.onlineorderingsystem.hibernate.domain.Cart;
import com.cts.onlineorderingsystem.hibernate.domain.CartItem;

public class CartDaoImp implements CartDao {

	@Autowired
	SessionFactory sessionFactory;
	
	Cart cart=new Cart();
	
	
	@Override
	public void addItemToCart(CartItem cartIem) {
		//sessionFactory.getCurrentSession().
		cart.addToCart(cartIem);
		
	}

	@Override
	public void deletItemFromCart(CartItem cartItem) {
		// TODO Auto-generated method stub
		
	}

}
