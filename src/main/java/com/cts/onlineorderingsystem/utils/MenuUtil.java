package com.cts.onlineorderingsystem.utils;

import java.util.ArrayList;
import java.util.List;

import com.cts.onlineorderingsystem.hibernate.domain.MenuItems;

public class MenuUtil {
	
	public static List<MenuItems> searchMenuItemByType(List<MenuItems> menuItems,String type)
	{
		List<MenuItems>subMenu=new ArrayList<MenuItems>();
			
		for(MenuItems item: menuItems)
			{
				if(type.equals(item.getItemType()))
				{
					subMenu.add(item);
				}
			}
			
		return subMenu;
	}
	

}
