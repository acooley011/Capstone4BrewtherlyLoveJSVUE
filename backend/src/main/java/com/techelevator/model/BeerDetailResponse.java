package com.techelevator.model;

import java.util.List;

public class BeerDetailResponse {
	
	private Beer beer;
	
	private List<Review> reviewList;

	public Beer getBeer() {
		return beer;
	}

	public void setBeer(Beer beer) {
		this.beer = beer;
	}

	public List<Review> getReviewList() {
		return reviewList;
	}

	public void setReviewList(List<Review> reviewList) {
		this.reviewList = reviewList;
	}

}
