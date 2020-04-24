package com.techelevator.model;

import java.util.List;


	public interface BreweryDao {
	
	
	    /**
	     * Get all of the breweries from the database.
	     * @return a List of user objects
	     */
	    public List<Brewery> getAllBreweries();
	    public Brewery getBreweryById(int breweryId);
		
	
}
