package com.techelevator.model;

import java.util.List;


	public interface BreweryDao {
	
	
	    /**
	     * Get all of the breweries from the database.
	     * @return a List of user objects
	     */
	    public List<Brewery> getAllBreweries();
	    
	    public Brewery getBreweryById(Long breweryId);
	    
	    public Brewery getBreweryByName(String name);
	    
	    
	    //save a new brewery done by Administrator
	    public void saveBrewery(String name, String address, String city, 
	    		String neighborhood, String zip, String contact, String description, String breweryLogoUrl, String businessHours);
	    
	    //Brewer can update brewery info
	    public void updateBrewery(String name, String address, String city, 
	    		String neighborhood, String zip, String contact, String description, String breweryLogoUrl, String businessHours);
	
	    public Brewery getBreweryByUserId(long userId);

		boolean updateBreweryUserId(long id, int userId);
}
