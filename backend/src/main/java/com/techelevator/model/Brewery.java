package com.techelevator.model;

import org.hibernate.validator.constraints.NotBlank;

/**
 * Brewery
 */
public class Brewery {
	
    //Added validation NotBlank so that all fields must be filled to add brewery info 
	private long id;
	
	@NotBlank(message="Name cannot be blank")
	private String name;
	@NotBlank(message="required")
	private String address;
	@NotBlank(message="required")
	private String city;
	@NotBlank(message="required")
	private String zip;
	private String neighborhood;
	@NotBlank(message="required")
	private String contact;
	@NotBlank(message="required")
	private String description;
	private String breweryLogoUrl;
	@NotBlank(message="required")
	private String businessHours;
	
	//the userId for the brewer 
	private long userId;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getNeighborhood() {
		return neighborhood;
	}
	public void setNeighborhood(String neighborhood) {
		this.neighborhood = neighborhood;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getBreweryLogoUrl() {
		return breweryLogoUrl;
	}
	public void setBreweryLogoUrl(String breweryLogoUrl) {
		this.breweryLogoUrl = breweryLogoUrl;
	}
	public String getBusinessHours() {
		return businessHours;
	}
	public void setBusinessHours(String businessHours) {
		this.businessHours = businessHours;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public long getUserId() {
		return userId;
	}
	public void setUserId(long userId) {
		this.userId = userId;
	}
	
}