package com.cts.onlineorderingsystem.dao.imp;


import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.cts.onlineorderingsystem.dao.MenuItemDao;
import com.cts.onlineorderingsystem.hibernate.domain.MenuItems;

/**
 * 
 * @author 566729
 *
 */

@Repository("menuItem")
public class MenuItemDaoImp implements MenuItemDao{

	
	@Autowired
	SessionFactory sessionFactory;
	
	
	@Transactional
	@Override
	public void addMenuItem(MenuItems menuItem) {
		
	}
	
	
	@Transactional
	@Override
	public void editMenuItem(MenuItems menuItem) {
		// TODO Auto-generated method stub
		
	}
	
	@Transactional
	@Override
	public void deleteMenuItem(MenuItems menuItem) {
		// TODO Auto-generated method stub
		
	}
	
	@Transactional
	@Override
	public MenuItems getMenuItemById(int id) {
		String query="from MenuItems where itemID='"+id+"'";
		Query q= sessionFactory.getCurrentSession().createQuery(query);
		MenuItems m=(MenuItems) q.uniqueResult();
		return m;
	}
	

	
	@Transactional
	@Override
	@SuppressWarnings("unchecked")
	public List<MenuItems> allMenuItems() {		
		String query="from MenuItems";
		List<MenuItems> ls=(List<MenuItems>)  sessionFactory.getCurrentSession().createQuery(query).list(); 
        
		return ls;
	}
	
	
	

}
