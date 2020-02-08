package com.cts.onlineorderingsystem.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cts.onlineorderingsystem.constants.Constants;
import com.cts.onlineorderingsystem.hibernate.domain.Cart;
import com.cts.onlineorderingsystem.hibernate.domain.CartItem;
import com.cts.onlineorderingsystem.hibernate.domain.MenuItems;
import com.cts.onlineorderingsystem.service.MenuItemService;


@Controller
public class ShoppingCartController {

	@Autowired
	Cart cart;
	
	@Autowired
	MenuItemService menuItemService;
	
	@RequestMapping(value="addToCart", method=RequestMethod.POST)
	public String addToCart(@RequestParam("itemId") int itemId,@RequestParam("quantity") int quantity, @RequestParam("quantity") String size ) throws IOException, SecurityException, RollbackException, HeuristicMixedException, HeuristicRollbackException, SystemException
	{
		MenuItems menuItem=new MenuItems();
		CartItem cartItem=new CartItem();
		menuItem=menuItemService.getMenuItemById(itemId);
		int cartItemId=cart.incrementCartItemId();
		cartItem.setMenuItem(menuItem);
		cartItem.setQuantity(quantity);
		cartItem.setTotalPrice(quantity * menuItem.getItemPrice());
		cartItem.setCartPositonId(cartItemId);
		cart.addToCart(cartItem);
		
		return "redirect:/menu";
	}
	
	@RequestMapping(value="shoppingCart")
	public ModelAndView home(HttpServletResponse response) throws IOException, SecurityException, RollbackException, HeuristicMixedException, HeuristicRollbackException, SystemException
	{
		ModelAndView mv = new ModelAndView(Constants.SHOPPING_CART);
		mv.addObject("cart", cart);
		
		return mv;
	}
	
	
	@RequestMapping(value="removeFromCart", method=RequestMethod.POST)
	public String removeFromCart(@RequestParam("cartItemId") int cartItemId) throws IOException, SecurityException, RollbackException, HeuristicMixedException, HeuristicRollbackException, SystemException
	{
		cart.removeItemFromCart(cartItemId);
		
		return "redirect:/shoppingCart";
	}
	
}

