package com.techelevator.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

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
	 private BreweryDAO breweryDAO;
	 
	 @Autowired
	 private BeerDAO beerDAO;
	 
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
	 
	 	@RequestMapping(path="/admin", method = RequestMethod.GET)
	 	public List<Brewery> showBreweries(){
	 		List<Brewery> allBreweries = breweryDao.getAllBreweries();
			return allBreweries;
	 		}
	 	
	 	@RequestMapping(path="/admin", method = RequestMethod.POST)
	 	public Brewery createBrewery(@RequestBody Brewery newBrewery) {
			return breweryDao.saveBrewery(newBrewery); 		
	 	}
	 	
	 
//	 @RequestMapping(path = "/admin", method = RequestMethod.GET)
//	 public Brewery createBrewery(@PathVariable long id) {
//		 
//		 Brewery newBrewery = new Brewery();
//		
//		 breweryDao.saveBrewery(newBrewery.getName(), newBrewery.getAddress(), newBrewery.getCity(),
//				 newBrewery.getNeighborhood(), newBrewery.getZip(), newBrewery.getContact(), 
//				 newBrewery.getDescription(), newBrewery.getBreweryLogoUrl(), newBrewery.getBusinessHours());
//			
//		 return newBrewery;
//	 }
	 
	 

}
