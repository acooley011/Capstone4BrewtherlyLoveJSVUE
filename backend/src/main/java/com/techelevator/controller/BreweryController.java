package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.JwtTokenHandler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



import com.techelevator.model.BeerDAO;
import com.techelevator.model.Brewery;
import com.techelevator.model.BreweryDao;

public class BreweryController {
	
	 @Autowired
	 private BreweryDao breweryDao;
	
	 @RequestMapping(value="/breweries", method=RequestMethod.GET)
		 public String getAllBreweries(
		 		HttpServletRequest request,
		 		HttpSession session,
		 		ModelMap model)
		 {
		 	System.out.println("entering getAllBreweries()");
		 	List<Brewery> breweries = breweryDao.getAllBreweries();
		 	model.put("breweries", breweries);
		 	String result = "Size of breweries [" + breweries.size() + "]";
		 	String jsonBreweries = "{\"breweries\":[  \r\n" + 
		 			"    {\"name\":\"Yards Brewery\", \"email\":\"victoryl@gmail.com\"},  \r\n" + 
		 			"    {\"name\":\"AJS\", \"email\":\"ag@gmail.com\"},  \r\n" + 
		 			"    {\"name\":\"Tired Hands\", \"email\":\"tiredhands@gmail.com\"}  \r\n" + 
		 			"]}  ";
		 	System.out.println("exiting getAllBreweries() " + result + " " + jsonBreweries);
		 	return "RESULT ==> " + result + "\n" + jsonBreweries;
		 }

}
