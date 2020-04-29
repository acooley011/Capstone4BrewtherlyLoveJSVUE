package com.techelevator.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.UnauthorizedException;
import com.techelevator.model.Beer;
import com.techelevator.model.BeerDAO;
import com.techelevator.model.Brewery;
import com.techelevator.model.BreweryDAO;
import com.techelevator.model.BreweryDetailResponse;
import com.techelevator.model.BreweryListResponse;


@RestController
@CrossOrigin
@RequestMapping("/api")
public class BreweryController {
	
	 @Autowired
	 private AuthProvider authProvider;
	
	 @Autowired
	 private BreweryDAO breweryDAO;
	 
	 @Autowired
	 private BeerDAO beerDAO;
	 
	 //THIS WORKS IN POSTMAN
	 @RequestMapping(value="/breweryList", method=RequestMethod.GET)
		 public BreweryListResponse getBreweryList()
		 {
		 	System.out.println("entering getBreweryList()");
		 	BreweryListResponse response = new BreweryListResponse();
		 	List<Brewery> breweries = breweryDAO.getAllBreweries();
		 	System.out.println("Size of breweries [" + breweries.size() + "]");
		 	response.setBreweries(breweries);
		 	System.out.println("exiting getBreweryList()");
		 	return response;
		 }
	 
	 
	 
	 //THIS WORKS IN POSTMAN
	 @RequestMapping(path="/breweryDetails/{id}", method=RequestMethod.GET)
		public BreweryDetailResponse showBreweryDetails(@PathVariable long id) {
			Brewery brewery = breweryDAO.getBreweryById(id);

			List<Beer> breweryBeerList = beerDAO.getAllBeersInBeerList(id);
			
			//Response object- made separate java object for BreweryDetailResponse
			
			BreweryDetailResponse response = new BreweryDetailResponse();
			response.setBeerList(breweryBeerList);
			response.setBrewery(brewery);
		
			
			return response;
			
			
		}
	 //THIS WORKS IN POSTMAN
	 	@RequestMapping(path="/admin/brewery", method = RequestMethod.GET)
	 	public List<Brewery> showBreweries() throws UnauthorizedException{

	 		//Commenting this out until we get admin user creating done
//	 		if(!authProvider.userHasRole(new String[] {"admin"})) {
//	 			throw new UnauthorizedException();
//	 		}
	 		
	 		List<Brewery> allBreweries = breweryDAO.getAllBreweries();
			return allBreweries;
	 		}
	  //THIS WORKS IN POSTMAN	
	 	@RequestMapping(path="/admin/brewery", method = RequestMethod.POST)
	 	public Brewery createBrewery(@RequestBody Brewery newBrewery) throws UnauthorizedException {
	 		
//	 		if(!authProvider.userHasRole(new String[] {"admin"})) {
//	 			throw new UnauthorizedException();
//	 		}
	 	 
			 breweryDAO.saveBrewery(newBrewery);
			 return newBrewery;
	 	}
	 	
	 	
	
	 	//TODO need to test updating brewery info
	 	@RequestMapping(path="/brewer/{id}", method = RequestMethod.GET)
	 	public Brewery getBreweryInfo(@RequestBody Brewery brewery, @PathVariable long id) {
	 		return breweryDAO.getBreweryById(id);
	 	}
	 
	 	
	 	@RequestMapping(path="/brewer/{id}", method = RequestMethod.PUT)
	 	public Brewery updateBreweryInfo(@RequestBody Brewery brewery, @PathVariable long id) {
	 		return breweryDAO.saveBrewery(brewery);
	 	}
	 

}
