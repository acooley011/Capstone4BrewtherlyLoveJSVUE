package com.techelevator.reviews.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(code = HttpStatus.NOT_FOUND)
public class BeerReviewNotFoundException extends RuntimeException {

	private static final long serialVersionUID = 6974644855556556894L;

	private int id;

	public BeerReviewNotFoundException(int id, String message) {
		super(message);
		setId(id);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

}
