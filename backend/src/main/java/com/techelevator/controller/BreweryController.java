package com.techelevator.controller;

import com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx.Binding;
import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.JwtTokenHandler;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.model.Beer;
import com.techelevator.model.BeerDAO;
import com.techelevator.model.Brewery;
import com.techelevator.model.BreweryDao;
import com.techelevator.model.BreweryDetailResponse;


@RestController
@CrossOrigin
@RequestMapping("/api")
public class BreweryController {
	
	 @Autowired
	 private BreweryDao breweryDao;
	 
	 @Autowired
	 private BeerDAO beerDAO;
	 
	 //TODO should this actually be path="/brewery-list" ? does the path here need to match the router/front-end?
	//Hey Sharon, I'm commenting this out for now
//	 @RequestMapping(value="/breweries", method=RequestMethod.GET)
//		 public String getAllBreweries(
//		 		HttpServletRequest request,
//		 		HttpSession session,
//		 		ModelMap model)
//		 {
//		 	System.out.println("entering getAllBreweries()");
//		 	List<Brewery> breweries = breweryDao.getAllBreweries();
//		 	model.put("breweries", breweries);
//		 	String result = "Size of breweries [" + breweries.size() + "]";
//		 	String jsonBreweries = "{\"breweries\":[  \r\n" + 
//		 			"    {\"name\":\"Yards Brewery\", \"email\":\"victoryl@gmail.com\"},  \r\n" + 
//		 			"    {\"name\":\"AJS\", \"email\":\"ag@gmail.com\"},  \r\n" + 
//		 			"    {\"name\":\"Tired Hands\", \"email\":\"tiredhands@gmail.com\"}  \r\n" + 
//		 			"]}  ";
//		 	System.out.println("exiting getAllBreweries() " + result + " " + jsonBreweries);
//		 	return "RESULT ==> " + result + "\n" + jsonBreweries;
//		 }
	 
	 //
	 
//	 @RequestMapping(path = "/admin", method = RequestMethod.POST)
//	 public Brewery createBrewery(@Valid @RequestBody Brewery newBrewery, Binding result) {
//		 breweryDao.saveBrewery(newBrewery.getName(), newBrewery.getAddress(), newBrewery.getCity(),newBrewery.getNeighborhood(),  
//					 newBrewery.getZip(), newBrewery.getContact(), newBrewery.getDescription(), newBrewery.getBreweryLogoUrl(), newBrewery.getBusinessHours());
//			return null;
//	 }
	 
	 @RequestMapping(path="/breweryDetails/{id}", method=RequestMethod.GET)
		public BreweryDetailResponse showBreweryDetails(@PathVariable long id) {
			Brewery brewery = breweryDao.getBreweryById(id);

			List<Beer> breweryBeerList = beerDAO.getAllBeersInBeerList(id);
			
			//Response object- made separate java object for BreweryDetailResponse
			
			BreweryDetailResponse response = new BreweryDetailResponse();
			response.setBeerList(breweryBeerList);
			response.setBrewery(brewery);
		
			
			return response;
		}
	 
	 

}
