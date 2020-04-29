package com.techelevator.model;

import java.util.Date;

import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonFormat;

public class BeerReview {

	@NotNull
	private int beerId;
	private String beerName;
    private String userName;
    private String subject;
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'hh:mm:ss.SSSXXX")
	private Date createdAt;
	private String beerReview;

	public BeerReview() {

	}

	public int getBeerId() {
		return beerId;
	}

	public void setBeerId(int id) {
		this.beerId = beerId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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

	public String getBeerReview() {
		return beerReview;
	}

	public void setBeerReview(String beerReview) {
		this.beerReview = beerReview;
	}

	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	@Override
	public String toString() {
		return "BeerReview [id=" + beerId + ", username=" + userName + ", subject=" + subject + "]";
	}

}