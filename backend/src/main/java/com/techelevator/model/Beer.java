package com.techelevator.model;

import java.math.BigDecimal;

import org.hibernate.validator.constraints.NotBlank;

public class Beer {
	
	/*Properties*/
	
	private Long id;
	
	@NotBlank
	private String name;
	private String description;
	private BigDecimal abv;
	private String type;
	private String imgUrl;

	
	//TODO need to connect to Brewery and Reviews for Beerlist and review rating
	//private int rating;
	//private Long breweryId
	//The Brewery model will need to use beerId
	

	/*GETTERS AND SETTERS*/

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public BigDecimal getAbv() {
		return abv;
	}

	public void setAbv(BigDecimal abv) {
		this.abv = abv;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getImgUrl() {
		return imgUrl;
	}

	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}


	/*method for start rating*/
	//TODO need Review model rating data type TBD int/big decimal/float
	
	/*public int getStarRating() {
		int starRating = 0;
		
		if (rating != null) {
			starRating = rating.intValue();
		}
		return starRating;
	}
	
	*/
}
