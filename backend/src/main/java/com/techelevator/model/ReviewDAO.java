package com.techelevator.model;

import java.util.List;

public interface ReviewDAO {

    public Review saveReview(String username, String subject, String beer_name, Integer rating, String review);
    public List<Review> searchReviewsByBeerId(long beerId);
    //public int getReviewCount(long beerId);

    public List<Review> getAllReviews();
}