package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcBreweryDao implements BreweryDao{

    private JdbcTemplate jdbcTemplate;

	public JdbcBreweryDao(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
	}
   
    /**
     * Get all of the breweries from the database.
     * @return a List of brewery objects
     */
    @Override
    public List<Brewery> getAllBreweries() {
        List<Brewery> breweries = new ArrayList<Brewery>();
        String sqlSelectAllBreweries = "SELECT * FROM breweries ORDER by name";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllBreweries);

        while (results.next()) {
            Brewery brewery = mapResultToBrewery(results);
            breweries.add(brewery);
        }

        return breweries;
    }

    //Helper Method
    private Brewery mapResultToBrewery(SqlRowSet results) {
    	Brewery brewery = new Brewery();
    	brewery.setId(Long.valueOf(results.getInt("brewery_id")));
    	brewery.setName(results.getString("name"));
    	brewery.setAddress(results.getString("address"));
    	brewery.setCity(results.getString("city"));
    	brewery.setZip(results.getInt("zipcode"));
    	brewery.setNeighborhood(results.getString("neighborhood"));
    	brewery.setContact(results.getString("contact"));
    	brewery.setDescription(results.getString("description"));
    	brewery.setBreweryLogoUrl(results.getString("brewery_img"));
    	brewery.setBusinessHours(results.getString("business_hours"));    	
        return brewery;
    }

	@Override
	public Brewery getBreweryById(Long breweryId) {
		Brewery brewery = new Brewery();
		String sqlGetBreweryById = "SELECT * FROM breweries WHERE brewery_id = ?";
		
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetBreweryById, breweryId);
		
		if (results.next()) {
			brewery = mapResultToBrewery(results);
		}
		return brewery;
	}

	@Override
	public void saveBrewery(String name, String address, String city, String neighborhood, String zip,
			String contact, String description, String breweryLogoUrl, String businessHours) {
		jdbcTemplate.update("INSERT INTO breweries(name, address, city, neighborhood, zip, contact, description, brewery_logo_url) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)",
				name, address, city, neighborhood, zip, contact, description, breweryLogoUrl, businessHours);
	}

	@Override
	public Brewery getBreweryByName(String name) {
		Brewery brewery = new Brewery();
		String sqlGetBreweryById = "SELECT * FROM breweries WHERE name = ?";
		
		SqlRowSet results = jdbcTemplate.queryForRowSet(sqlGetBreweryById, name);
		
		if (results.next()) {
			brewery = mapResultToBrewery(results);
		}
		return brewery;
	}

	@Override
	public void updateBrewery(String name, String address, String city, String neighborhood, String zip, String contact,
			String description, String breweryLogoUrl, String businessHours) {
		jdbcTemplate.update("UPDATE breweries SET name = ?, address =? , city = ?, neighboorhood = ?, zip = ?, contact = ?, "
				+ "description = ?, brewery_logo_url = ?, business_hours = ? WHERE brewery_id = ?",
				name, address, city, neighborhood, zip, contact, description, breweryLogoUrl, businessHours);
		
	}

   
}
