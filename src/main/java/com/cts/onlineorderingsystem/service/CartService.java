package com.cts.onlineorderingsystem.service;

import com.cts.onlineorderingsystem.hibernate.domain.CartItem;

public interface CartService {

	void addItemToCart(CartItem cartIem);
	void deletItemFromCart(CartItem cartItem);
	
}
