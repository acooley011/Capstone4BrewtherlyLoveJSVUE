package com.techelevator.model;


import java.util.List;

import org.springframework.stereotype.Service;

//TODO Brewery model will need to use beerId to display beer list
@Service
public interface BeerDAO {
	
	public List<Beer> getAllBeers();
	
	public Beer getBeerById(Long id);

	public Beer getBeerByName(String name);
	
	//Displaying the Beer List for Brewery to update its beer list
	public List<Beer> getAllBeersInBeerList(long breweryId); 
	
	public void saveBeer(Beer newBeer);
		
	public void deleteBeer(long beerId);
	

	
	
}
