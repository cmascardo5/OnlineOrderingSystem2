package com.cts.onlineorderingsystem.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletResponse;
import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.cts.onlineorderingsystem.constants.Constants;
import com.cts.onlineorderingsystem.hibernate.domain.MenuItems;
import com.cts.onlineorderingsystem.service.MenuItemService;
import com.cts.onlineorderingsystem.utils.MenuUtil;


@Controller
public class HomeController {
	
	
	
	private List<MenuItems> allMenuItems;
	private List<MenuItems> drinks;
	private List<MenuItems> pizza;
	private List<MenuItems> apps;
	private List<MenuItems> sandwiches;
	
	@Autowired
	MenuItemService menuItemService;

	@RequestMapping(value="/")
	public ModelAndView home(HttpServletResponse response) throws IOException, SecurityException, RollbackException, HeuristicMixedException, HeuristicRollbackException, SystemException
	{
		allMenuItems=menuItemService.allMenuItems();
		drinks=MenuUtil.searchMenuItemByType(allMenuItems, Constants.DRINKS);
		apps=MenuUtil.searchMenuItemByType(allMenuItems, Constants.APPETIZERS);
		pizza=MenuUtil.searchMenuItemByType(allMenuItems, Constants.PIZZA);
		sandwiches=MenuUtil.searchMenuItemByType(allMenuItems, Constants.SANDWICHES);
		ModelAndView mv = new ModelAndView(Constants.HOME);
		mv.addObject("mItems", allMenuItems);
		
		return mv;
	}
	
	
	@RequestMapping(value="menu")
	public ModelAndView getMenu() throws IOException, SecurityException, RollbackException, HeuristicMixedException, HeuristicRollbackException, SystemException
	{
		ModelAndView mv=new ModelAndView(Constants.MENU);
		mv.addObject("mItems", allMenuItems);
		
		return mv;
	}
	
	@RequestMapping(value="menu/{subMenu}")
	public ModelAndView getSubMenu(@PathVariable String subMenu) throws IOException, SecurityException, RollbackException, HeuristicMixedException, HeuristicRollbackException, SystemException
	{
	
		ModelAndView mv=new ModelAndView(Constants.MENU);
		if(Constants.DRINKS.equals(subMenu))
		{
			
			mv.addObject("mItems",drinks);
		}
		else if(Constants.APPETIZERS.equals(subMenu))
		{
			
			mv.addObject("mItems",apps);
		}
		else if(Constants.PIZZA.equals(subMenu))
		{
		
			mv.addObject("mItems",pizza);
		}
		else if(Constants.SANDWICHES.equals(subMenu))
		{
			
			mv.addObject("mItems",sandwiches);
		}
		else
		{
			
			mv.addObject("mItems",allMenuItems);
		}
		
		
		return mv;
	}

}
