package com.cts.onlineorderingsystem.controllers;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cts.onlineorderingsystem.constants.Constants;
import com.stripe.Stripe;
import com.stripe.exception.APIConnectionException;
import com.stripe.exception.APIException;
import com.stripe.exception.AuthenticationException;
import com.stripe.exception.CardException;
import com.stripe.exception.InvalidRequestException;
import com.stripe.model.Charge;


@Controller
public class StripeController {

	@RequestMapping(value="stripe", method=RequestMethod.POST)
	public  String submitPayment(HttpServletRequest request) throws AuthenticationException, InvalidRequestException, APIConnectionException, CardException, APIException
	{
		// Set your secret key: remember to change this to your live secret key in production
		// See your keys here: https://dashboard.stripe.com/account/apikeys
		Stripe.apiKey = Constants.STRIPE_TEST_KEY;

		// Token is created using Stripe.js or Checkout!
		// Get the payment token submitted by the form:
		String token = request.getParameter("stripeToken");

		// Charge the user's card:
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("amount", 1000);
		params.put("currency", "usd");
		params.put("description", "Example charge");
		params.put("source", token);

		@SuppressWarnings("unused")
		Charge charge = Charge.create(params);
		
		return "redirect:/home";
	}
	
	
	
}
