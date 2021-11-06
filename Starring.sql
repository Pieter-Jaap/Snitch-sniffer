test=> ALTER TABLE movies1 ADD lexemesStarring tsvector;
ALTER TABLE
test=> UPDATE movies1 SET lexemesStarring = to_tsvector(Starring);
UPDATE 5229
test=> SELECT url FROM movies1 WHERE lexemesStarring @@ to_tsquery('pirate');
 url 
-----
(0 rows)

test=> SELECT url FROM movies1 WHERE lexemesStarring @@ to_tsquery('Orlando Bloom');
ERROR:  syntax error in tsquery: "Orlando Bloom"
test=> SELECT url FROM movies1 WHERE lexemesStarring @@ to_tsquery('Orlando-Bloom');
 url 
-----
(0 rows)

test=> SELECT url FROM movies1 WHERE lexemesStarring @@ to_tsquery('Johnny-Depp');
 url 
-----
(0 rows)

test=> SELECT url FROM movies1 WHERE lexemesStarring @@ to_tsquery('Geoffrey-Rush');
 url 
-----
(0 rows)

test=> ALTER TABLE movies1 ADD rank3 float4;
ALTER TABLE
test=> UPDATE movies1 SET rank = ts_rank(lexemesStarring,plainto_tsquery((SELECT Starring FROM movies1 WHERE url='pan')));
UPDATE 5229
test=> CREATE TABLE recommendationsBasedOnStarringField AS SELECT url, rank FROM movies1 WHERE rank < 0.99 ORDER BY rank DESC LIMIT 50;
SELECT 50
test=> \copy (SELECT * FROM recommendationsBasedOnStarringField) to '/home/pi/RSL/top50recommendationsStarring.csv' WITH csv;
COPY 50
test=> /q
test-> \q
