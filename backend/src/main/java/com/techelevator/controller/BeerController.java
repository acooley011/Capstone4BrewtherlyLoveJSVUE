package com.techelevator.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.model.BeerDAO;
import com.techelevator.model.Brewery;
import com.techelevator.model.BreweryDao;
import com.techelevator.model.Review;
import com.techelevator.model.ReviewDAO;
import com.techelevator.model.User;
import com.techelevator.model.Beer;

//TODO add Review model objects 
//import com.techelevator.model.ReviewDAO
//import com.techelevator.model.Review;


@RestController
@CrossOrigin
@RequestMapping("/api")
public class BeerController {
	
	 @Autowired
	 BeerDAO beerDAO;
	 
//TODO eventually may need to connect with brewery and review for beer list and ratings 
	 @Autowired
	 BreweryDao breweryDAO;
		
	 @Autowired
	 ReviewDAO reviewDAO;
	 
	 //Returning the beer list
	 @RequestMapping(path="beer-list", method=RequestMethod.GET)
		public String showAllBeers(ModelMap modelHolder) {
			List<Beer> beerList = beerDAO.getAllBeers();
			List<Brewery> breweries = breweryDAO.getAllBreweries();
			
			modelHolder.put("allBeers", beerList);
			modelHolder.put("allBreweries", breweries);
			return "beerlist";
		}
	 
	
	 
	 //Getting beer details page by beer id
	 @RequestMapping(path="/beerDetails/{id}", method=RequestMethod.GET)
		public Beer showBeerDetails(@PathVariable long id){
			
		/*
		 * if (beerDAO.getBeerById(id) == null) { return "redirect:/beer-list"; }
		 */
		 
			Beer beer = beerDAO.getBeerById(id);
			
		
			return beer;
		}
	 
	 //Getting form to add Beer if a brewer
	 @RequestMapping(path="/addBeer", method=RequestMethod.GET)
		public String showAddBeer(ModelMap modelHolder, HttpSession session){
			User currentUser= (User) session.getAttribute("currentUser");
			
			if(currentUser == null || currentUser.getRole() != "beer-lover" || currentUser.getRole() != "administrator") {
				return "redirect:/beer-list";
			}
			if( ! modelHolder.containsAttribute("newBeer")){
				modelHolder.put("newBeer", new Beer());
			}
			
			Brewery currentBrewery = breweryDAO.getBreweryByUserId(currentUser.getId());
			modelHolder.put("brewery", currentBrewery);
			
			return "addBeer";
	
	 }
	 
	 //Add a beer
	 
	 @RequestMapping(path="/addBeer", method=RequestMethod.POST)
		public String addNewBeer(@Valid @ModelAttribute("newBeer") Beer newBeer,
				BindingResult result, @RequestParam int breweryId, HttpSession session) {
		 	
		 	newBeer.setBreweryId((long) breweryId);
			beerDAO.saveBeer(newBeer);
			return "redirect:/breweryBeers";
	 }
}
	 
	 
	 


