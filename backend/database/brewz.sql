/* 
/* DROPPING TABLES */
DROP TABLE beer;
DROP TABLE brewery;


/* SAFETY FIRST */
BEGIN TRANSACTION

/* DROPPING THE CONSTRAINTS */

ALTER TABLE beer
DROP CONSTRAINT fk_beer_brewery;

/* -- Now, we can DROP the breweries table -- */
DROP TABLE brewery;

/* CREATING TABLES */
INSERT INTO beer(beer_name, ABV) VALUES (IMPERIAL RED ALE, 
/* -- Restore the breweries table by running a DDL CREATE script ... */
CREATE TABLE brewery
(
brewerId serial,
brewer_name varchar(64) not null,
address varchar(64) not null,
website varchar(64) not null,
constraint pk_brewery primary key (brewerId)
);

CREATE TABLE beer
(
beerId serial,
beer_name varchar(64) not null,
abv smallint(64) not null,
constraint pk_beer primary key (beerId)
);

/* ADDING CONSTRAINTS */

/* -- and then add the constraint back to the art table to restore referential integrity ... */

ALTER TABLE beer
ADD CONSTRAINT fk_beer_brewery foreign key (beerId) references brewery (brewerId);

/* RESTORE OR COMMIT ?? */
/*COMMIT;
*/
