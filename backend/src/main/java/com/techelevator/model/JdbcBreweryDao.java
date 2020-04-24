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
        String sqlSelectAllBreweries = "SELECT * FROM breweries";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllBreweries);

        while (results.next()) {
            Brewery brewery = mapResultToUser(results);
            breweries.add(brewery);
        }

        return breweries;
    }

    private Brewery mapResultToUser(SqlRowSet results) {
    	Brewery brewery = new Brewery();
    	brewery.setName(results.getString("name"));
    	brewery.setAddress(results.getString("address"));
    	brewery.setCity(results.getString("city"));
    	brewery.setZip(results.getInt("zipcode"));
    	brewery.setNeighborhood(results.getString("neighborhood"));
    	brewery.setContact(results.getString("contact"));
    	brewery.setDescription(results.getString("description"));
    	brewery.setBreweryLogoUrl(results.getString("brewery_logo_url"));
    	brewery.setBusinessHours(results.getString("business_hours"));    	
        return brewery;
    }

	@Override
	public Brewery getBreweryById(int breweryId) {
		Brewery brewery = new Brewery();
		
		return brewery;
	}

   
}
