package com.techelevator.controller;



import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.JwtTokenHandler;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.techelevator.model.BeerDAO;
import com.techelevator.model.Brewery;
import com.techelevator.model.BreweryDao;
import com.techelevator.model.ReviewDAO;
import com.techelevator.model.Beer;

//TODO add Review model objects 
//import com.techelevator.model.ReviewDAO
//import com.techelevator.model.Review;


@RestController
@CrossOrigin
public class BeerController {
	
	 @Autowired
	 BeerDAO beerDAO;
	 
//TODO eventually may need to connect with brewery and review	 
	 @Autowired
	 BreweryDao breweryDAO;
		
	 @Autowired
	 ReviewDAO reviewDAO;
	 
	 @RequestMapping(path="/beers", method=RequestMethod.GET)
		public String showAllBeers(ModelMap modelHolder) {
			List<Beer> beerList = beerDAO.getAllBeers();
			List<Brewery> breweries = breweryDAO.getAllBreweries();
			
			modelHolder.put("allBeers", beerList);
			modelHolder.put("allBreweries", breweries);
			return "beers";
		}
	 
	 @RequestMapping(path="/beers/{id}", method=RequestMethod.GET)
		public Beer getBeer(@PathVariable Long id) {
		 return beerDAO.getBeerById(id);
	 }
	}
	 
	 
	 
	 
	 
	 


