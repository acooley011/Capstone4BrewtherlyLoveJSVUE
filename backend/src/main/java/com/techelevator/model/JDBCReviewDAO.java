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
    public void saveReview(Review review) {
        String sqlSaveReview = "INSERT INTO reviews(beer_id, beer_name, subject, review, rating, username) VALUES(?,?,?,?,?,?)";
        jdbcTemplate.update(sqlSaveReview, review.getBeerId(), review.getBeerName(), review.getSubject(), review.getReview(), review.getRating(), review.getUsername());
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

    // @Override
    // public int getReviewCount(long BeerId) {
    //     String sqlGetReviewCount = "SELECT COUNT(*) FROM reviews WHERE beer_id = ?";
    //     int numOfReviews = jdbcTemplate.queryForObject(sqlGetReviewCount, int.class, beerId);
    //     return numOfReviews;
    // }

}