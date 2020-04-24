package com.techelevator.model;

import java.util.List;

import javax.activation.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;

import java.math.RoundingMode;
import java.util.ArrayList;


public class JDBCBeerDAO implements BeerDAO {
	
	private JdbcTemplate jdbcTemplate;

	@Autowired
	public JDBCBeerDAO(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}	

	@Override
	public List<Beer> getAllBeer() {
		
		List<Beer> allBeers = new ArrayList<>();
		String sqlSelectAllBeers = "SELECT * FROM beers LEFT JOIN (SELECT beer_id, AVG(rating)AS avg_rating FROM reviews GROUP BY beer_id)AS rating " + 
					"ON rating.beer_id = beers.beer_id WHERE is_active = ? GROUP BY beers.beer_id, rating.beer_id, avg_rating ORDER BY name";
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
		jdbcTemplate.update("INSERT INTO beers(name, abv, ibu, type, info, img_url, brewery_id, is_active) VALUES (?,?,?,?,?,?,?,?)",
				newBeer.getName(), newBeer.getAbv(), newBeer.getIbu(), newBeer.getType(), newBeer.getInfo(), newBeer.getImgUrl(), newBeer.getBreweryId(), newBeer.isActive());
	}
	
	private Beer mapRowToBeer(SqlRowSet row) {
		Beer newBeer = new Beer();
		
		newBeer.setId(row.getLong("beer_id"));
		newBeer.setName(row.getString("name").toUpperCase());
		newBeer.setAbv(row.getFloat("abv"));
		newBeer.setIbu(row.getInt("ibu"));
		newBeer.setType(row.getString("type"));
		newBeer.setInfo(row.getString("info"));
		newBeer.setImgUrl(row.getString("img_url"));
		newBeer.setBreweryId(row.getLong("brewery_id"));
		newBeer.setActive(row.getBoolean("is_active"));
		if (row.getBigDecimal("avg_rating") == null) {
			newBeer.setRating(row.getBigDecimal("avg_rating"));
		} else {
			newBeer.setRating(row.getBigDecimal("avg_rating").setScale(2, RoundingMode.HALF_UP));
		}

		return newBeer;
	}

	@Override
	public Beer getBeerById(Long id) {
		Beer beer = null;

		String sqlGetgetBeerById = "SELECT * FROM beers LEFT JOIN (SELECT beer_id, AVG(rating)AS avg_rating FROM reviews GROUP BY beer_id)AS rating " + 
				"ON rating.beer_id = beers.beer_id WHERE beers.beer_id =? AND is_active = ? GROUP BY beers.beer_id, rating.beer_id, avg_rating ORDER BY name";
		SqlRowSet result = jdbcTemplate.queryForRowSet(sqlGetgetBeerById, id, true);
		while(result.next()) {
			beer = mapRowToBeer(result);
		}
		return beer;
	}
	
	@Override
	public void updateActiveBeerByBrewery(Long beerId, boolean isActive) {
		jdbcTemplate.update("UPDATE beers SET is_active = ? WHERE beer_id = ?", isActive, beerId);
		
	}

	@Override
	public void removeBeer(Long beerId) {
		jdbcTemplate.update("DELETE FROM beers WHERE beer_id = ?", beerId);
		
	}

	@Override
	public void updateBeerInfo(String name, float abv, String type, String description, String imgUrl,Long beerId) {
		jdbcTemplate.update("UPDATE beers SET name = ? , abv = ?, type = ?, description = ?, img_url = ? WHERE beer_id = ?", 
				name, abv, type, description, imgUrl, beerId); 		
	}
	

}

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
