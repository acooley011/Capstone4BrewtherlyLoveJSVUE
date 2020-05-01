ALTER TABLE reviews ALTER COLUMN date set default now();
DELETE FROM reviews WHERE review_id = 7;
DELETE FROM reviews WHERE review_id = 8;
DELETE FROM reviews WHERE review_id = 9;
DELETE FROM reviews WHERE review_id = 10;
DELETE FROM reviews WHERE review_id = 6;