/* 
/* DROPPING TABLES */
DROP TABLE reviews;



/* SAFETY FIRST */
BEGIN TRANSACTION

/* DROPPING THE CONSTRAINTS */

ALTER TABLE reviews
DROP CONSTRAINT 

/* CREATING TABLES */
INSERT INTO reviews( beer_id, text, rating, average_rating) 
VALUES (1, 'Lovin it', 5, 5);
/* -- Restore the breweries table by running a DDL CREATE script ... */
CREATE TABLE reviews
(
	reviewId serial,
	beer_id integer NOT NULL,
	text VARCHAR (299) NOT NULL,
	rating VARCHAR(30) NOT NULL,
	average_rating VARCHAR(30) NOT NULL
    constraint pk_review primary key (reviewId));
);

/* ADDING CONSTRAINTS */

/* -- and then add the constraint back to the art table to restore referential integrity ... */

ALTER TABLE review
ADD CONSTRAINT fk_beer_id foreign key (beerId);

/* RESTORE OR COMMIT ?? */
/*COMMIT;
*/
