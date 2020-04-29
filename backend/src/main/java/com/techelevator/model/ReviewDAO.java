package com.techelevator.model;

import java.util.Date;
import java.util.List;

public interface ReviewDAO {

    public void saveReview(String subject, String review, String beerName, Date date, String username, int rating );
   
    public List<Review> searchReviewsByBeerId(long beerId);
    //public int getReviewCount(long beerId);
    
    public Review getReviewById(Long id);

    public List<Review> getAllReviews();
}