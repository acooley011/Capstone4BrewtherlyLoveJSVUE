package com.techelevator.model;
import java.util.List;

public class ReviewListResponse {
	
	private List<Review> reviewList;
	
	public List<Review> getReviews() {
		return reviewList;
	}
	
	public void setBreweries(List<Review> reviewList) {
		this.reviewList = reviewList;
	}

}
