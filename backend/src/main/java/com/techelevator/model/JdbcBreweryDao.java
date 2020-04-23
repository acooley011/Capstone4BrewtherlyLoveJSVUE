package com.techelevator.model;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import com.techelevator.authentication.PasswordHasher;

import org.bouncycastle.util.encoders.Base64;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;

@Component
public class JdbcBreweryDao implements BreweryDao{

    private JdbcTemplate jdbcTemplate;
   
    /**
     * Get all of the breweries from the database.
     * @return a List of user objects
     */
    @Override
    public List<User> getAllBreweries() {
        List<User> users = new ArrayList<User>();
        String sqlSelectAllBreweries = "SELECT  FROM Breweries";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sqlSelectAllBreweries);

        while (results.next()) {
            User user = mapResultToUser(results);
            users.add(user);
        }

        return users;
    }

    private User mapResultToUser(SqlRowSet results) {
        User user = new User();
        user.setId(results.getString("name"));
        user.setUsername(results.getString("address"));
        user.setRole(results.getString("city"));
        user.setId(results.getLong("zipcode"));
        user.setUsername(results.getString("neighborhood"));
        user.setRole(results.getString("contact"));
        user.setId(results.getString("description"));
        user.setUsername(results.getString("brewery_logo_url"));
        user.setRole(results.getString("business_hours"));
        return user;
    }

   
}
