SELECT * FROM breweries;

UPDATE breweries SET brewery_img = CONCAT(brewery_img, '.png');

SELECT * FROM breweries;

DELETE FROM breweries WHERE brewery_id = 11;
