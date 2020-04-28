BEGIN TRANSACTION;

DROP TABLE IF EXISTS beers;
DROP TABLE IF EXISTS breweries;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS reviews;

CREATE TABLE users (
  id serial PRIMARY KEY,
  username varchar(255) NOT NULL UNIQUE,  -- Username
  email varchar(255) NOT NULL,
  password varchar(32) NOT NULL,      -- Password
  salt varchar(256) NOT NULL,          -- Password Salt
  role varchar(255) NOT NULL default('beer-lover')
);

CREATE TABLE breweries (
    brewery_id serial,
    user_id integer,
    name varchar(255) NOT NULL,
    address varchar(255) NOT NULL,
    city varchar(50) NOT NULL,
    zipcode varchar(15) NOT NULL,
    neighborhood varchar(100) NOT NULL,
    contact varchar(255),
    business_hours varchar(255),
    description text NOT NULL,
    brewery_img varchar(255),
    CONSTRAINT pk_brewery_brewery_id PRIMARY KEY (brewery_id),
    CONSTRAINT fk_brewery_user_id FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE beers (
    beer_id serial,
    brewery_id integer,
    name varchar(255) NOT NULL,
    type varchar(255) NOT NULL,
    abv decimal,
    description text NOT NULL,
    img_url varchar(255),
    CONSTRAINT pk_beer_beer_id PRIMARY KEY (beer_id),
    CONSTRAINT fk_brewery_brewery_id FOREIGN KEY (brewery_id) REFERENCES breweries(brewery_id)
);

CREATE TABLE reviews (
    review_id serial,
    beer_id integer,
    beer_name varchar(255) NOT NULL,
    subject varchar(100) NOT NULL,
    review varchar(299) NOT NULL,
    rating int NOT NULL,
    date DATE NOT NULL,
    username varchar(255) NOT NULL,
    CONSTRAINT pk_review_review_id PRIMARY KEY (review_id),
    CONSTRAINT fk_beer_beer_id FOREIGN KEY (beer_id) REFERENCES beers(beer_id),

);

COMMIT TRANSACTION;
