package com.techelevator.model;

import java.util.List;

import javax.sql.DataSource;

import com.techelevator.authentication.AuthProvider;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Date;

@Component
public class JDBCReviewDAO implements ReviewDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    private AuthProvider auth;


    @Autowired
    public JDBCReviewDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public Review saveReview(Review newReview) {
    //INSERT INTO reviews (review_id, beer_id, beer_name, subject, review, rating, username) SELECT 7, beers.beer_id, 'beer', 'fgbfb', 'fgn', 5, 'fgbfgn' 
    //FROM beers WHERE beers.name = 'Kenzinger' LIMIT 1;
 
    jdbcTemplate.update("INSERT INTO reviews (beer_id, beer_name, subject, review, rating, username) SELECT beers.beer_id, beers.name, ?, ?, ?, ? FROM beers WHERE beers.name = ? LIMIT 1;", 
    newReview.getSubject(), newReview.getReview(), newReview.getRating(), auth.getCurrentUser().getUsername(), newReview.getBeerName());

    // jdbcTemplate.update("INSERT INTO reviews(beer_name, subject, review, rating, username) VALUES(?, ?, ?, ?, ?)",
    //    newReview.getSubject(), newReview.getReview(), newReview.getRating(), newReview.getUsername(), newReview.getBeerName());
       
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
        review.setBeerName(row.getString("beer_name"));
        review.setImgUrl(row.getString("img_url"));
		review.setReview(row.getString("review"));
        review.setRating(row.getInt("rating"));
        review.setUsername(row.getString("username"));
        review.setDate(row.getDate("date"));

        return review;
    }

    @Override
    public List<Review> getAllReviews() {
        String sqlGetAllReviews = "SELECT reviews.*,beers.img_url FROM reviews LEFT OUTER JOIN beers ON reviews.beer_id = beers.beer_id";
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