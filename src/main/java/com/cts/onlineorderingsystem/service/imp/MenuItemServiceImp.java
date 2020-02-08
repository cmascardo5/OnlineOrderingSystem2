package com.cts.onlineorderingsystem.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cts.onlineorderingsystem.dao.MenuItemDao;
import com.cts.onlineorderingsystem.hibernate.domain.MenuItems;
import com.cts.onlineorderingsystem.service.MenuItemService;


@Service
public class MenuItemServiceImp implements MenuItemService
{
	
	
	@Autowired
	MenuItemDao menuItemDao;
	
	@Override
	public void addMenuItem(MenuItems menuItem) {
		menuItemDao.addMenuItem(menuItem);	
	}

	@Override
	public void editMenuItem(MenuItems menuItem) {
		menuItemDao.editMenuItem(menuItem);	
	}

	@Override
	public void deleteMenuItem(MenuItems menuItem) {
		menuItemDao.deleteMenuItem(menuItem);	
	}

	@Override
	public MenuItems getMenuItemById(int id) {
		return menuItemDao.getMenuItemById(id);
	}
	
	@Override
	public List<MenuItems> allMenuItems() {
		return menuItemDao.allMenuItems();
	}

	



	
}
