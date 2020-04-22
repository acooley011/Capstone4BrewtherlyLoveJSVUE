BEGIN TRANSACTION;

DROP TABLE IF EXISTS users;

CREATE TABLE users (
  id serial PRIMARY KEY,
  username varchar(255) NOT NULL UNIQUE,     -- Username
  password varchar(32) NOT NULL,      -- Password
  salt varchar(256) NOT NULL,          -- Password Salt
  role varchar(255) NOT NULL default('beer-lover')
);

DROP TABLE IF EXISTS breweries;

CREATE TABLE breweries (
    brewery_id serial,
    name varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    city varchar(50) NOT NULL,
    zipcode varchar(15) NOT NULL,
    neighborhood varchar(100) NOT NULL,
    contact varchar(255),
    description text NOT NULL,
    brewery_logo_url varchar(255),
    business_hours varchar(255),
    CONSTRAINT pk_brewery_brewery_id PRIMARY KEY (brewery_id),
);

DROP TABLE IF EXISTS beers;

CREATE TABLE beers (
    beer_id serial,
    brewery_id integer,
    name varchar(255) NOT NULL,
    abv decimal,
    type varchar(255) NOT NULL,
    description text NOT NULL,
    img_url varchar(255),
    CONSTRAINT pk_beer_beer_id PRIMARY KEY (beer_id),
    CONSTRAINT fk_brewery_brewery_id FOREIGN KEY (brewery_id) REFERENCES breweries(brewery_id)
);

COMMIT TRANSACTION;
