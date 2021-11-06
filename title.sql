test=> ALTER TABLE  movies1 ADD lexemesTitle tsvector;
ALTER TABLE
test=> UPDATE movies1 SET lexemesTitle = to_tsvector(Title);
UPDATE 5229
test=> SELECT url FROM movies1 WHERE lexemesTitle @@ to_tsquery('pirate');
                          url                          
-------------------------------------------------------
 the-pirates-who-dont-do-anything-a-veggietales-movie
 the-pirates!-band-of-misfits
 pirates-of-the-caribbean-the-curse-of-the-black-pearl
 pirates-of-the-caribbean-dead-mans-chest 
 pirates-of-the-caribbean-at-worlds-end
 pirates-of-the-caribbean-dead-men-tell-no-tales
(6 rows)

test=> ALTER TABLE movies1 ADD rank float4;
ERROR:  column "rank" of relation "movies1" already exists
test=> ALTER TABLE movies1 ADD rank2 float3;
ERROR:  type "float3" does not exist
LINE 1: ALTER TABLE movies1 ADD rank2 float3;
                                      ^
test=> ALTER TABLE movies1 ADD rank2 float4;
test=> UPDATE movies1 SET rank2 = ts_rank(lexemesTitle,plainto_tsquery((SELECT Title FROM movies1 WHERE url='pan)));
test'> ALTER TABLE movies1 ADD rank2 float4;
test'> UPDATE movies1 SET rank2 = ts_rank(lexemesTitle,plainto_tsquery((SELECT Title FROM movies1 WHERE url='pan')));
test'> ^C
test=> CREATE TABLE recommendationsBasedOnTitleField AS SELECT url, rank2 FROM movies1 WHERE rank2 < 0.99 ORDER BY rank2 DESC LIMIT 50;
SELECT 50
test=> \copy (SELECT * FROM recommendationsBasedOnTitleField) to '/home/pi/RSL/top50recommendationsTitle.csv' WITH csv;
COPY 50
test=> \q
