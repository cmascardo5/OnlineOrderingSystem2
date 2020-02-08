package com.cts.onlineorderingsystem.dao;

import com.cts.onlineorderingsystem.hibernate.domain.CartItem;

public interface CartDao {

	void addItemToCart(CartItem cartIem);
	void deletItemFromCart(CartItem cartItem);

}
