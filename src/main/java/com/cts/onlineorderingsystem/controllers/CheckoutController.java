package com.cts.onlineorderingsystem.controllers;

import java.io.IOException;
import javax.transaction.HeuristicMixedException;
import javax.transaction.HeuristicRollbackException;
import javax.transaction.RollbackException;
import javax.transaction.SystemException;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.cts.onlineorderingsystem.constants.Constants;

@Controller
public class CheckoutController {

	@RequestMapping(value="checkout", method=RequestMethod.POST)
	public ModelAndView home(@RequestParam("total")double total) throws IOException, SecurityException, RollbackException, HeuristicMixedException, HeuristicRollbackException, SystemException
	{
		ModelAndView mv = new ModelAndView(Constants.CHECKOUT_PAGE);
		mv.addObject("total", total);
		
		return mv;
	}
}
