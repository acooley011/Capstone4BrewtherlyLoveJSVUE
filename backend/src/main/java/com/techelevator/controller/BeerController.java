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
import com.techelevator.model.BeerDetailResponse;
import com.techelevator.model.Brewery;
import com.techelevator.model.BreweryDAO;
import com.techelevator.model.Review;
import com.techelevator.model.ReviewDAO;
import com.techelevator.model.User;

//TODO add Review model objects 
//import com.techelevator.model.ReviewDAO
//import com.techelevator.model.Review;


@RestController
@CrossOrigin
@RequestMapping("/api")
public class BeerController {
	

	 @Autowired
	 private AuthProvider authProvider;
	
	 @Autowired
	 BeerDAO beerDAO;
	 
//TODO eventually may need to connect with brewery and review for beer list and ratings 
	 @Autowired
	 BreweryDAO breweryDAO;
		
	 @Autowired
	 ReviewDAO reviewDAO;
	 
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
	
	 // THIS WORKS IN POSTMAN
	 @RequestMapping(path="brewer/addBeer", method=RequestMethod.POST)
		public Beer createBeer(@RequestBody Beer newBeer) throws UnauthorizedException{
		 
		 //User currentUser = authProvider.getCurrentUser();
		 //Brewery currentBrewery = breweryDAO.getBreweryByUserId(currentUser.getId());
		 
		 //Load the brewery by id, then make sure user id on brewery is the current user id or that
		 //the current user is an brewer (role) and that they are the brewer for the brewery matching the beer
		 
		 //Commenting this out for now, need to check that user is logged in and id for brewer matches
//		 if(currentUser == null || currentUser.getId() != currentBrewery.getUserId()||!authProvider.userHasRole(new String[] {"brewer"})) {
//			 throw new UnauthorizedException();
//		 }
		 
		 //Load the brewery object, check roles and throw exception/ check if null
		 
		
		 return beerDAO.saveBeer(newBeer);
	
	 }
	 
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
	 
	 
	 


