SELECT * FROM breweries;

UPDATE breweries SET brewery_img = CONCAT(brewery_img, '.png');

SELECT * FROM breweries;
