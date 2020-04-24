package com.techelevator.model;


import java.util.List;

//TODO Brewery model will need to use beerId to display beer list

public interface BeerDAO {
	
	public List<Beer> getAllBeer();
	
	public Beer getBeerById(Long id);

	public Beer getBeerByName(String name);
	
	//Displaying the Beer List for Brewer to update the  beer list
	public List<Beer> getAllBeerByBrewery(Long breweryId); 
	
	public void saveBeer(Beer newBeer);
	
	//public void updateBeer(String name, BigDecimal abv, String type, String description, String imgUrl, Long beerId);
	
	//public void deleteBeer(Long beerId);
	
	//public List<Beer> getBeerByBrewery(long breweryId);
	
	//public boolean searchForBeerByName(String name);
	
	//public void updateBeerAvailability(Long beerId, boolean isActive);
	
}
