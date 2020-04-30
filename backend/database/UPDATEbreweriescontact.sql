CREATE TABLE users (
  id serial PRIMARY KEY,
  username varchar(255) NOT NULL UNIQUE,  -- Username
  email varchar(255) NOT NULL,
  password varchar(32) NOT NULL,      -- Password
  salt varchar(256) NOT NULL,          -- Password Salt
  role varchar(255) NOT NULL default('beer-lover')
  
);
INSERT INTO users ("username", "email", "password", "salt", "role") VALUES
('user',
'fakeemail@yahoo.com',
'FjZDm+sndmsdEDwNtfr6NA==',
'kidcasB0te7i0jK0fmRIGHSm0mYhdLTaiGkEAiEvLp7dAEHWnuT8n/5bd2V/mqjstQ198iImm1xCmEFu+BHyOz1Mf7vm4LILcrr17y7Ws40Xyx4FOCt8jD03G+jEafpuVJnPiDmaZQXJEpEfekGOvhKGOCtBnT5uatjKEuVWuDA=',
'user');

INSERT INTO users ("username", "email", "password", "salt", "role") VALUES
('admin',
'fakeemail1@yahoo.com',
'FjZDm+sndmsdEDwNtfr6NA==',
'kidcasB0te7i0jK0fmRIGHSm0mYhdLTaiGkEAiEvLp7dAEHWnuT8n/5bd2V/mqjstQ198iImm1xCmEFu+BHyOz1Mf7vm4LILcrr17y7Ws40Xyx4FOCt8jD03G+jEafpuVJnPiDmaZQXJEpEfekGOvhKGOCtBnT5uatjKEuVWuDA=',
'admin');
 DROP TABLE reviews;

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
    CONSTRAINT fk_beer_beer_id FOREIGN KEY (beer_id) REFERENCES beers(beer_id)
    );
    
    INSERT INTO reviews(review_id, beer_id, beer_name, subject, review, rating, date, username)
VALUES(1, 1, 'Philthy Unfiltered Hazy IPA',
'This was a digustingly good beer',
'Reminds me of the dirty streets of Filthadelphia..but in a good way! I drank over 100 of these in one day.',
5, '2020-04-27', 'user');

INSERT INTO reviews(review_id, beer_id, beer_name, subject, review, rating, date, username)
VALUES(2, 64, 'Ghost Station Berliner Weisse',
'Its like summertime',
'Sweet and slightly sour. Super delicious and refreshing on a summer day...good on a cold spring day as well.',
5, '2020-04-25', 'user');

INSERT INTO reviews(review_id, beer_id, beer_name, subject, review, rating, date, username)
VALUES(3, 65, 'Pretend Winter Happened Imperial Stout',
'C&P did it again!',
'Im a big fan of stouts and this is one of my absolute favorites. You can really taste the chocolate, vanilla and tangerine notes. Reminds me of sitting in the hotel taking a load off after a long day of hitting the slopes.',
5, '2020-04-28', 'user');

INSERT INTO reviews(review_id, beer_id, beer_name, subject, review, rating, date, username)
VALUES(4, 36, 'Good Good Double IPA',
'Pretty good',
'Not my favorite double IPA in the world but definitely tasty. Very bitter with a soft fruitiness',
4, '2020-04-27', 'user');

INSERT INTO reviews(review_id, beer_id, beer_name, subject, review, rating, date, username)
VALUES(5, 15, 'Working Cat Pale Ale',
'My favorite pale ale on earth',
'I love this beer. Its super easy to drink and they go down like delicious water. Plus Im a big fan of cats so that makes me enjoy it more. Even though I love it so much Im giving it one star because its seasonal and I want it EVERY DAY.',
1, '2020-04-22', 'user');

INSERT INTO reviews(review_id, beer_id, beer_name, subject, review, rating, date, username)
VALUES(6, 1, 'Philthy Unfiltered Hazy IPA',
'This was a digustingly good beer',
'Reminds me of the dirty streets of Filthadelphia..but in a good way! I drank over 100 of these in one day.',
5, '2020-04-27', 'user');

INSERT INTO reviews(review_id, beer_id, beer_name, subject, review, rating, date, username)
VALUES(7, 1, 'Philthy Unfiltered Hazy IPA',
'This was a digustingly good beer',
'Reminds me of the dirty streets of Filthadelphia..but in a good way! I drank over 100 of these in one day.',
5, '2020-04-27', 'user');

INSERT INTO reviews(review_id, beer_id, beer_name, subject, review, rating, date, username)
VALUES(8, 1, 'Philthy Unfiltered Hazy IPA',
'This was a digustingly good beer',
'Reminds me of the dirty streets of Filthadelphia..but in a good way! I drank over 100 of these in one day.',
5, '2020-04-27', 'user');

INSERT INTO reviews(review_id, beer_id, beer_name, subject, review, rating, date, username)
VALUES(9, 1, 'Philthy Unfiltered Hazy IPA',
'This was a digustingly good beer',
'Reminds me of the dirty streets of Filthadelphia..but in a good way! I drank over 100 of these in one day.',
5, '2020-04-27', 'user');

INSERT INTO reviews(review_id, beer_id, beer_name, subject, review, rating, date, username)
VALUES(10, 1, 'Philthy Unfiltered Hazy IPA',
'This was a digustingly good beer',
'Reminds me of the dirty streets of Filthadelphia..but in a good way! I drank over 100 of these in one day.',
5, '2020-04-27', 'user');

ALTER TABLE reviews ALTER COLUMN date set default now();

UPDATE breweries SET brewery_img = CONCAT(brewery_img, '.png');

UPDATE beers SET img_url = CONCAT(img_url, '.png');
SELECT * FROM breweries_brewery_id_seq;
SELECT setval('breweries_brewery_id_seq', 10, true);
SELECT * FROM beers_beer_id_seq;
SELECT setval('beers_beer_id_seq', 74, true);
SELECT * FROM reviews_review_id_seq;
SELECT setval('reviews_review_id_seq', 50, true);

UPDATE breweries
SET contact = '267-534-4879', neighborhood= 'South Philly'
WHERE brewery_id = 5; 
UPDATE breweries
SET contact = '215-398-1900', neighborhood= 'Callowhill'
WHERE brewery_id = 6; 
UPDATE breweries
SET contact = '215-765-7000', neighborhood= 'Northern Liberties'
WHERE brewery_id = 7; 
