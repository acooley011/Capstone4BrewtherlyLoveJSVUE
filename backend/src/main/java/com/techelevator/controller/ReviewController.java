package com.techelevator.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.validation.BindingResult;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.model.ReviewDAO;
import com.techelevator.model.BeerDAO;
import com.techelevator.authentication.AuthProvider;
import com.techelevator.model.Beer;
import com.techelevator.model.Review;

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
   
    



}