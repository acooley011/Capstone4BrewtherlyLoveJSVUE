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
	public void saveBeer(Beer newBeer) {
		jdbcTemplate.update("INSERT INTO beers(brewery_id, name, type, abv, description, img_url) VALUES (?,?,?,?,?,?)",
				newBeer.getBreweryId(), newBeer.getName(),  newBeer.getType(), newBeer.getAbv(), newBeer.getDescription(), newBeer.getImgUrl());
	}
	
	

	@Override
	public Beer getBeerById(Long id) {
		Beer beer = null;

		String sqlGetBeerById = "SELECT * FROM beers WHERE beers.beer_id =? GROUP BY beers.beer_id ORDER BY name";
		SqlRowSet result = jdbcTemplate.queryForRowSet(sqlGetBeerById, id, true);
		while(result.next()) {
			beer = mapRowToBeer(result);
		}
		return beer;
	}
	


	@Override
	public void deleteBeer(long beerId) {
		jdbcTemplate.update("DELETE FROM beers WHERE beer_id = ?", beerId);
		
	}



	
	
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

		return newBeer;
	}

	@Override
	public List<Beer> getAllBeersInBeerList(long breweryId) {
		// TODO Auto-generated method stub
		return null;
	}

}
