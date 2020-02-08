package com.cts.onlineorderingsystem.controllers;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;
import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cts.onlineorderingsystem.constants.Constants;
import com.cts.onlineorderingsystem.hibernate.domain.Users;

@Controller
public class UserController {
	@RequestMapping(value="submitLogin",method=RequestMethod.POST)
	public ModelAndView submitLoginForm(@RequestParam("userName") String userName,@RequestParam("password") String password,Model model) throws SecurityException, RollbackException, HeuristicMixedException, HeuristicRollbackException, SystemException{
		
		
		Users user=new Users();
		user.setEmail(userName);
		user.setPassword(password);
		//user=HibernateClient.loginUser(user);
		//MenuImages menuItems = new MenuImages();
		ModelAndView mv;
		if(user==null)
		{
			return new ModelAndView(Constants.HOME); 
		}
		else
			//System.out.println("firstName: "+user.getFirstName());
			//model.addAttribute("user",user);
			
			//menuItems.setImages(HibernateClient.getImages());
			//menuItems.setMenuItems(HibernateClient.getMenuItems());
			 mv = new ModelAndView("loggedInUser");
			//mv.addObject("mItems", allMenuItems);
			mv.addObject("user",user);
		
		return mv;
	}
	
	
	@RequestMapping(value="loggedInUser")
	public ModelAndView loggedInUser(HttpServletResponse response) throws IOException, SecurityException, RollbackException, HeuristicMixedException, HeuristicRollbackException, SystemException{
		
		//MenuImages menuItems = new MenuImages();
		//menuItems.setImages(HibernateClient.getImages());
		//menuItems.setMenuItems(HibernateClient.getMenuItems());
		ModelAndView mv = new ModelAndView("loggedInUser");
		//mv.addObject("mItems", allMenuItems);
		
		return mv;
	}
	
	@RequestMapping(value="register", method=RequestMethod.POST)
	public String registerUser(@RequestParam("userName") String userName,@RequestParam("password") String password, @RequestParam("firstName") String firstName, @RequestParam("lastName") String lastName) throws IOException, SecurityException, RollbackException, HeuristicMixedException, HeuristicRollbackException, SystemException{
		Users user = new Users();
		user.setEmail(userName);
		user.setPassword(password);
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setLoginStatus("Customer");
		//HibernateClient.registerUser(user);
		return Constants.HOME;
	}
}
