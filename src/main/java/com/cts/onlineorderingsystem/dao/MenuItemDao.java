package com.cts.onlineorderingsystem.dao;

import java.util.List;

import com.cts.onlineorderingsystem.hibernate.domain.MenuItems;

public interface MenuItemDao {
	
	void addMenuItem(MenuItems menuItem);
	void editMenuItem(MenuItems menuItem);
	void deleteMenuItem(MenuItems menuItem);
	MenuItems getMenuItemById(int id);
	List<MenuItems> allMenuItems();
	
	

}
