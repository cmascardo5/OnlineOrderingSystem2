package com.cts.onlineorderingsystem.hibernate.domain;

import java.util.ArrayList;
import java.util.List;

public class Cart {
	
	
	private int cartItemId=0;;
	private List<CartItem> cartItems=new ArrayList<CartItem>();
	private double grandTotal;
	
	public List<CartItem> getCartItems() {
		return cartItems;
	}
	public double getGrandTotal() {
		return grandTotal;
	}
	public void setGrandTotal(double grandTotal) {
		this.grandTotal = grandTotal;
	}
	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}
	
	public void addToCart(CartItem cartItem)
	{
		cartItems.add(cartItem);
	}
	public int getCartItemId() {
		return cartItemId;
	}
	public void setCartItemId(int cartItemId) {
		this.cartItemId = cartItemId;
	}
	

	public int incrementCartItemId()
	{
		return cartItemId=cartItemId+1;
	}
	
	public void removeItemFromCart(int cartItemId)
	{
		for(int i=0;i<cartItems.size();i++)
		{
			if(cartItems.get(i).getCartPositonId()==cartItemId)
			{
				cartItems.remove(i);
			}
		}
	}
	
}
