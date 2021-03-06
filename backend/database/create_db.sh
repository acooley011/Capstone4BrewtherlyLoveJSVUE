#!/bin/bash
BASEDIR=$(dirname $0)
DATABASE=brewz
psql -U postgres -f "$BASEDIR/dropdb.sql" &&
createdb -U postgres $DATABASE &&
psql -U postgres -d $DATABASE -f "$BASEDIR/schema.sql" &&
psql -U postgres -d $DATABASE -f "$BASEDIR/user.sql" &&
psql -U postgres -d $DATABASE -f "$BASEDIR/data.sql" &&
psql -U postgres -d $DATABASE -f "$BASEDIR/breweries.sql" &&
psql -U postgres -d $DATABASE -f "$BASEDIR/beers.sql"
