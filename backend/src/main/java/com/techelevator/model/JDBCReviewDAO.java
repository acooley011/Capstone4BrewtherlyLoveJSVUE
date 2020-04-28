package com.techelevator.model;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.math.RoundingMode;
import java.util.ArrayList;

@Component
public class JDBCReviewDAO implements ReviewDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public JDBCReviewDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public Review saveReview(String username, String subject, String beer_name, Integer rating, String review) {
        long newId = jdbcTemplate.queryForObject(
            "INSERT INTO reviews(username, subject, beer_name, rating, review) VALUES(?,?,?,?,?) RETURNING id", Long.class,
            username, subject, beer_name, rating, review);
        
        Review newReview = new Review();
        newReview.setId(newId);
        newReview.setUsername(username);
        newReview.setSubject(subject);
        newReview.setBeerName(beer_name);
        newReview.setRating(rating);
        newReview.setReview(review);

        return newReview;
     
    }

    @Override
    public List<Review> searchReviewsByBeerId(long beerId) {
        List<Review> reviewList = new ArrayList<>();
        String sqlSearchReviewByBeerId = "SELECT * FROM reviews WHERE beer_id = ? LIMIT 10";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSearchReviewByBeerId, beerId);

        while(results.next()) {
            reviewList.add(mapRowToReview(results));
        }

        return reviewList;
    }

    private Review mapRowToReview(SqlRowSet row) {
        Review review = new Review();

        review.setId(row.getLong("review_id"));
        review.setBeerId(row.getLong("beer_id"));
        review.setSubject(row.getString("subject"));
		review.setReview(row.getString("review"));
        review.setRating(row.getInt("rating"));
        review.setUsername(row.getString("username"));

        return review;
    }

    @Override
    public List<Review> getAllReviews() {
        String sqlGetAllReviews = "SELECT * FROM reviews";
        List<Review> allReviews = new ArrayList<>();
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetAllReviews);
        
        while(results.next()) {
            allReviews.add(mapRowToReview(results));
        }
        
        return allReviews;
    }

	@Override
	public Review getReviewById(Long id) {
		Review review = null;
		
		String sqlGetReviewById = "SELECT * from reviews WHERE review.review_id=? " 
				+ "GROUP BY reviews.review_id ORDER BY rating DESC";
		SqlRowSet result = jdbcTemplate.queryForRowSet(sqlGetReviewById, id);
		
		while(result.next()) {
			review = mapRowToReview(result);
		}
		
		return review;
	}

}