package com.techelevator.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.model.BeerDAO;
import com.techelevator.model.Review;
import com.techelevator.model.ReviewDAO;

@RestController
@CrossOrigin
@RequestMapping("/api")
public class ReviewController {
	 
	@Autowired
	 private AuthProvider authProvider;
	

    @Autowired
   ReviewDAO reviewDAO;

    @Autowired
    BeerDAO beerDAO;
    
    //THIS WORKS IN POSTMAN
    @RequestMapping(path="/reviews", method = RequestMethod.GET)
    public List<Review> showReviews() {
    	
    	List<Review> allReviews = reviewDAO.getAllReviews();
    	
    	return allReviews;
    }
    
    
    @RequestMapping(path="/reviews/{id}", method = RequestMethod.GET)
    public List<Review> showReviewsById(@PathVariable long id) {
    	System.out.println("showReviewsById(" + id + ")");
    	List<Review> allReviewsById = reviewDAO.searchReviewsByBeerId(id);
    	System.out.println("size of reviews : " + allReviewsById.size());
    	return allReviewsById;
    }


}