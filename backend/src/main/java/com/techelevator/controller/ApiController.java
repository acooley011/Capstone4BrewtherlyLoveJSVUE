package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.UnauthorizedException;
import com.techelevator.model.BeerDAO;
import com.techelevator.model.Brewery;
import com.techelevator.model.BreweryDao;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * ApiController
 */
@RestController
@RequestMapping("/api")
public class ApiController {
	
	// @Autowired
	// private BreweryDao breweryDao;
	//@Autowired
	//private BeerDAO beerDao;

    @Autowired
    private AuthProvider authProvider;

    @RequestMapping(path = "/", method = RequestMethod.GET)
    public String authorizedOnly() throws UnauthorizedException {
        /*
        You can lock down which roles are allowed by checking
        if the current user has a role.
        
        In this example, if the user does not have the admin role
        we send back an unauthorized error.
        */
        if (!authProvider.userHasRole(new String[] { "admin" })) {
            throw new UnauthorizedException();
        }
        System.out.println("running admin");
        return "Success";
        
    }
    
    // @RequestMapping(value="/breweries", method=RequestMethod.GET)
	// public String getAllBreweries(
	// 		HttpServletRequest request,
	// 		HttpSession session,
	// 		ModelMap model)
	// {
	// 	System.out.println("entering getAllBreweries()");
	// 	List<Brewery> breweries = breweryDao.getAllBreweries();
	// 	model.put("breweries", breweries);
	// 	String result = "Size of breweries [" + breweries.size() + "]";
	// 	String jsonBreweries = "{\"breweries\":[  \r\n" + 
	// 			"    {\"name\":\"Yards Brewery\", \"email\":\"victoryl@gmail.com\"},  \r\n" + 
	// 			"    {\"name\":\"AJS\", \"email\":\"ag@gmail.com\"},  \r\n" + 
	// 			"    {\"name\":\"Tired Hands\", \"email\":\"tiredhands@gmail.com\"}  \r\n" + 
	// 			"]}  ";
	// 	System.out.println("exiting getAllBreweries() " + result + " " + jsonBreweries);
	// 	return "RESULT ==> " + result + "\n" + jsonBreweries;
	// }
}