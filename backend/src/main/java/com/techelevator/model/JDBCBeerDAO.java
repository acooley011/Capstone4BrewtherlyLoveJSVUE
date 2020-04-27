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
	public List<Beer> getAllBeers() {
		
		List<Beer> allBeers = new ArrayList<>();
		String sqlSelectAllBeers = "SELECT * FROM beers ORDER BY name";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllBeers);
		
		while(results.next()) {
			allBeers.add(mapRowToBeer(results));
		}
		
		return allBeers;
	}

	@Override
	public Beer getBeerById(Long id) {
		Beer beer = null;

		String sqlGetBeerById = "SELECT * FROM beers WHERE beers.beer_id =? GROUP BY beers.beer_id ORDER BY name";
		SqlRowSet result = jdbcTemplate.queryForRowSet(sqlGetBeerById, id);
		while(result.next()) {
			beer = mapRowToBeer(result);
		}
		return beer;
	}
	
	//TODO will need this method once Reviews model is completed
		@Override
		public Beer getBeerByName(String name) {
			Beer newBeer = new Beer();
			String sqlSelectBeerByName = "SELECT * FROM beers WHERE name =? GROUP BY beers.beer_id ORDER BY name";
			SqlRowSet result = jdbcTemplate.queryForRowSet(sqlSelectBeerByName, name);
			
			if(result.next()) {
				newBeer = mapRowToBeer(result);
			}
			return newBeer;
		}
	
	//Displaying the Beer List 
	@Override
	public List<Beer> getAllBeersInBeerList(long breweryId) {
		List<Beer> breweryBeerList = new ArrayList<>();
		String sqlSelectBeerByBrewery = "SELECT * FROM beers WHERE brewery_id =? GROUP BY beers.beer_id ORDER BY name";
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectBeerByBrewery, breweryId);
		
		while(results.next()) {
			breweryBeerList.add(mapRowToBeer(results));
		}
		
		return breweryBeerList;
	}
	

	@Override
	public void saveBeer(Beer newBeer) {
		jdbcTemplate.update("INSERT INTO beers(brewery_id, name, type, abv, description, img_url) VALUES (?,?,?,?,?,?)",
				newBeer.getBreweryId(), newBeer.getName(),  newBeer.getType(), newBeer.getAbv(), newBeer.getDescription(), newBeer.getImgUrl());
	}
	
	

	@Override
	public void deleteBeer(long beerId) {
		jdbcTemplate.update("DELETE FROM beers WHERE beer_id = ?", beerId);
		
	}

	
	/*HELPER METHOD*/
	private Beer mapRowToBeer(SqlRowSet row) {
		Beer newBeer = new Beer();
		
		newBeer.setId(row.getLong("beer_id"));
		newBeer.setName(row.getString("name").toUpperCase());
		newBeer.setAbv(row.getBigDecimal("abv"));
		newBeer.setType(row.getString("type"));
		newBeer.setDescription(row.getString("description"));
		newBeer.setImgUrl(row.getString("img_url"));
	;

		return newBeer;
	}


}
