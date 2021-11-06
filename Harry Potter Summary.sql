test=> CREATE TABLE movie;
ERROR:  syntax error at or near ";"
LINE 1: CREATE TABLE movie;
                          ^
test=> CREATE TABLE movies ();
ERROR:  relation "movies" already exists
test=> CREATE TABLE movie ();
CREATE TABLE
test=> DROP TABLE movie;
DROP TABLE
test=> CREATE TABLE movie (url text, title text, ReleaseDate text, Distributor text, Starring text, Summary text, Director text, Genre text, Rating text, Runtime text, Userscore text, Metascore text, scoreCounts text);
CREATE TABLE
test=> \copy movie FROM '/home/pi/RSL/moviesFromMetacritic.csv' delimiter ';' csv header;
COPY 5229
test=> SELECT * FROM movie where url='harry-potter-and-the-chamber-of-secrets';
[1]+  Stopped                 psql test
pi@raspberrypi:~ $ psql test
psql (11.13 (Raspbian 11.13-0+deb10u1))
Type "help" for help.

test=> ALTER TABLE movie ADD lexemesSummary tsvector;
ALTER TABLE
test=> UPDATE TABLE movie SET lexemesSummary = to_tsvector(Summary);
ERROR:  syntax error at or near "TABLE"
LINE 1: UPDATE TABLE movie SET lexemesSummary = to_tsvector(Summary)...
               ^
test=> UPDRATE movie SET lexemesSummary = to_tsvector(Summary);
ERROR:  syntax error at or near "UPDRATE"
LINE 1: UPDRATE movie SET lexemesSummary = to_tsvector(Summary);
        ^
test=> UPDATE movie SET lexemesSummary = to_tsvector(Summary);
UPDATE 5229
test=> SELECT url FROM movie WHERE lexemesSummary @@ to_tsquery('potter');
                    url                    
-------------------------------------------
 harry-potter-and-the-sorcerers-stone
 harry-potter-and-the-chamber-of-secrets
 harry-potter-and-the-order-of-the-phoenix
 percy-jackson-sea-of-monsters
 the-tango-lesson
(5 rows)

test=> ALTER TABLE movie ADD rank float4;
ALTER TABLE
test=> UPDATE movie SET rank = ts_rank(lexemesSummary,plainto_tsquery((SELECT Summary FROM movie WHERE url='harry-potter-and-the-chamber-of-secrets')));
UPDATE 5229
test=> CREATE TABLE recommendationsBasedOnSummaryField AS SELECT url, rank FROM movie WHERE rank < 0.99 ORDER BY rank DESC LIMIT 50;
ERROR:  relation "recommendationsbasedonsummaryfield" already exists
test=> CREATE TABLE recommendationsBasedOnSummaryField3 AS SELECT url, rank FROM movie WHERE rank < 0.99 ORDER BY rank DESC LIMIT 50;
SELECT 50
test=> \copy (SELECT * FROM  recommendationsBasedOnSummaryField3) to '/home/pi/RSL/top50recommendationsHarrySummary.csv' WITH csv;
COPY 50
