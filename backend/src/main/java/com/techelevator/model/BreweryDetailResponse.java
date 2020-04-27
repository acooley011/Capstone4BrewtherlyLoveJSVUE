package com.techelevator.model;

import java.util.List;

public class BreweryDetailResponse {
	
	private Brewery brewery;
	
	private List<Beer> beerList;

	public Brewery getBrewery() {
		return brewery;
	}

	public void setBrewery(Brewery brewery) {
		this.brewery = brewery;
	}

	public List<Beer> getBeerList() {
		return beerList;
	}

	public void setBeerList(List<Beer> beerList) {
		this.beerList = beerList;
	}

}
