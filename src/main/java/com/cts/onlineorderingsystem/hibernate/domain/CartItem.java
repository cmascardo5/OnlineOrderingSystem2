package com.cts.onlineorderingsystem.hibernate.domain;

public class CartItem {
	
	private int cartPositonId;
	private MenuItems menuItem;
	private int quantity;
	private double totalPrice;
	
	
	
	public MenuItems getMenuItem() {
		return menuItem;
	}
	public void setMenuItem(MenuItems menuItem) {
		this.menuItem = menuItem;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(double totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getCartPositonId() {
		return cartPositonId;
	}
	public void setCartPositonId(int cartPositonId) {
		this.cartPositonId = cartPositonId;
	}
	

}
