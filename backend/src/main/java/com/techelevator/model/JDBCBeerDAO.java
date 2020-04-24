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
public class JDBCBeerDAO implements BeerDAO {
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCBeerDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}	

	@Override
	public List<Beer> getAllBeer() {
		
		List<Beer> allBeers = new ArrayList<>();
		String sqlSelectAllBeers = "SELECT * FROM beers ORDER BY name";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllBeers, true);
		
		while(results.next()) {
			allBeers.add(mapRowToBeer(results));
		}
		
		return allBeers;
	}


	
	//TODO will need this method once Reviews model is completed
	@Override
	public Beer getBeerByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Beer> getAllBeerByBrewery(Long breweryId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void saveBeer(Beer newBeer) {
		jdbcTemplate.update("INSERT INTO beers(name, abv, type, description, img_url) VALUES (?,?,?,?,?)",
				newBeer.getName(), newBeer.getAbv(), newBeer.getType(), newBeer.getDescription(), newBeer.getImgUrl());
	}
	
	

	@Override
	public Beer getBeerById(Long id) {
		Beer beer = null;

		String sqlGetgetBeerById = "SELECT * FROM beers WHERE beers.beer_id =? GROUP BY beers.beer_id, rating.beer_id ORDER BY name";
		SqlRowSet result = jdbcTemplate.queryForRowSet(sqlGetgetBeerById, id, true);
		while(result.next()) {
			beer = mapRowToBeer(result);
		}
		return beer;
	}
	

//
//	@Override
//	public void removeBeer(Long beerId) {
//		jdbcTemplate.update("DELETE FROM beers WHERE beer_id = ?", beerId);
//		
//	}



	
	
	/*HELPER METHOD*/
	private Beer mapRowToBeer(SqlRowSet row) {
		Beer newBeer = new Beer();
		
		newBeer.setId(row.getLong("id"));
		newBeer.setName(row.getString("name").toUpperCase());
		newBeer.setAbv(row.getBigDecimal("abv"));
		newBeer.setType(row.getString("type"));
		newBeer.setDescription(row.getString("description"));
		newBeer.setImgUrl(row.getString("img_url"));
	;
	//TODO cannot set rating until Reviews model is completed
//		newBeer.setActive(row.getBoolean("is_active"));
//		if (row.getBigDecimal("avg_rating") == null) {
//			newBeer.setRating(row.getBigDecimal("avg_rating"));
//		} else {
//			newBeer.setRating(row.getBigDecimal("avg_rating").setScale(2, RoundingMode.HALF_UP));
//		}

		return newBeer;
	}

}
