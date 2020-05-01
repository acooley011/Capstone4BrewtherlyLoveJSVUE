SELECT * FROM beers;

UPDATE beers SET img_url = CONCAT(img_url, '.png');

SELECT * FROM beers;

DELETE FROM beers WHERE beer_id = 75;
DELETE FROM beers WHERE beer_id = 76;
DELETE FROM beers WHERE beer_id = 77;
DELETE FROM beers WHERE beer_id = 78;
DELETE FROM beers WHERE beer_id = 79;