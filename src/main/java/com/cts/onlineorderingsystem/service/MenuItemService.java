package com.cts.onlineorderingsystem.service;

import java.util.List;

import com.cts.onlineorderingsystem.hibernate.domain.MenuItems;

public interface MenuItemService {
	void addMenuItem(MenuItems menuItem);
	void editMenuItem(MenuItems menuItem);
	void deleteMenuItem(MenuItems menuItem);
	MenuItems getMenuItemById(int id);
	List<MenuItems> allMenuItems();
	

}
