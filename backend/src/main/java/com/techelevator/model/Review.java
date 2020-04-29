package com.techelevator.model;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Min;

import java.sql.Date;

import javax.validation.constraints.Max;

import org.hibernate.validator.constraints.NotBlank;

public class Review {

    /*Properties*/

    private long id;
    @NotBlank
    private String subject;

    private String review;

    @NotNull
    @Min(value = 1, message="Rate Me Between 1 and 5!")
    @Max(value = 5, message="Rate Me Between 1 and 5!")
    private int rating;

    @NotNull
    private long beerId;
    private String beerName;
    private String username;
    
    private Date date;

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getBeerName() {
        return beerName;
    }

    public void setBeerName(String beerName) {
        this.beerName = beerName;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getReview() {
        return review;
    }

    public void setReview(String review) {
        this.review = review;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public long getBeerId() {
        return beerId;
    }

    public void setBeerId(long beerId) {
        this.beerId = beerId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}
}
