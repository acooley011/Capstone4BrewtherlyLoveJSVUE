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
import com.techelevator.model.BeerDetailResponse;
import com.techelevator.model.BreweryDAO;
import com.techelevator.model.Review;
import com.techelevator.model.ReviewDAO;

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
	 BreweryDAO breweryDAO;
		
	 @Autowired
	 ReviewDAO reviewDAO;
	 
//	 //Returning the beer list
//	 @RequestMapping(path="beer-list", method=RequestMethod.GET)
//		public String showAllBeers(ModelMap modelHolder) {
//			List<Beer> beerList = beerDAO.getAllBeers();
//			List<Brewery> breweries = breweryDAO.getAllBreweries();
//			
//			modelHolder.put("allBeers", beerList);
//			modelHolder.put("allBreweries", breweries);
//			return "beerlist";
//		}
	 
	
	 
	 //Getting beer details page by beer id - THIS WORKS IN POSTMAN
	 @RequestMapping(path="/beerDetails/{id}", method=RequestMethod.GET)
		
	 public BeerDetailResponse showBeerDetails(@PathVariable long id){
			
			Beer beer = beerDAO.getBeerById(id);
			
			List<Review> beerReviewList = reviewDAO.searchReviewsByBeerId(id);
			
			//Response object- made separate java object for BeerDetailResponse
			
			BeerDetailResponse response = new BeerDetailResponse();
			response.setReviewList(beerReviewList);
			response.setBeer(beer);
		
			
			return response;
		}
	 
	 //Getting form to add Beer if a brewer
//	 @RequestMapping(path="/addBeer", method=RequestMethod.GET)
//		public String showAddBeer(ModelMap modelHolder, HttpSession session){
//			User currentUser= (User) session.getAttribute("currentUser");
//			
//			if(currentUser == null || currentUser.getRole() != "beer-lover" || currentUser.getRole() != "administrator") {
//				return "redirect:/beer-list";
//			}
//			if( ! modelHolder.containsAttribute("newBeer")){
//				modelHolder.put("newBeer", new Beer());
//			}
//			
//			Brewery currentBrewery = breweryDAO.getBreweryByUserId(currentUser.getId());
//			modelHolder.put("brewery", currentBrewery);
//			
//			return "addBeer";
//	
//	 }
	 
	 //Add a beer
	 
//	 @RequestMapping(path="/addBeer", method=RequestMethod.POST)
//		public String addNewBeer(@Valid @ModelAttribute("newBeer") Beer newBeer,
//				BindingResult result, @RequestParam int breweryId, HttpSession session) {
//		 	
//		 	newBeer.setBreweryId((long) breweryId);
//			beerDAO.saveBeer(newBeer);
//			return "redirect:/breweryBeers";
//	 }
 }
	 
	 
	 


