package com.cts.onlineorderingsystem.service.imp;

import org.springframework.stereotype.Service;

import com.cts.onlineorderingsystem.hibernate.domain.Cart;
import com.cts.onlineorderingsystem.hibernate.domain.CartItem;
import com.cts.onlineorderingsystem.service.CartService;


@Service
public class CartServiceImp implements CartService{

	private Cart cart=new Cart();
	
	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	@Override
	public void addItemToCart(CartItem cartIem) {
		cart.addToCart(cartIem);
		
	}

	@Override
	public void deletItemFromCart(CartItem cartItem) {
		// TODO Auto-generated method stub
		
	}

}
