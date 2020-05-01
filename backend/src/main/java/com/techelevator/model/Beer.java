package com.techelevator.model;




import org.hibernate.validator.constraints.NotBlank;

public class Beer {
	
	/*Properties*/
	
	private long id;
	
	@NotBlank(message="Name cannot be blank")
	private String name;
	@NotBlank(message="required")
	private String description;
	@NotBlank(message="required")
	private double abv;
	private String type;
	private String imgUrl;

	
	//TODO need to connect to Brewery and Reviews for Beerlist and review rating
	//Should we include average rating with beer?
	//private int rating;
	private long breweryId;
	//The Brewery model will need to use beerId
	

	/*GETTERS AND SETTERS*/

	public long getId() {
		return id;
	}

	public Long getBreweryId() {
		return breweryId;
	}

	public void setBreweryId(long breweryId) {
		this.breweryId = breweryId;
	}

	public void setId(long id) {
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

	public double getAbv() {
		return abv;
	}

	public void setAbv(double abv) {
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
