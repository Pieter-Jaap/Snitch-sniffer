test=> ALTER TABLE movie ADD rank2 float4;
ALTER TABLE
test=> ALTER TABLE movie ADD lexemesStarring tsvector;
ALTER TABLE
test=> UPDATE movie SET lexemesStarring = to_tsvector(Starring);
UPDATE 5229
test=> SELECT url FROM movie WHERE lexemesStarring @@ to_tsquery('potter');
            url             
----------------------------
 along-came-a-spider
 big-hero-6
 head-over-heels
 the-last-house-on-the-left
 the-tango-lesson
(5 rows)

test=> SELECT url FROM movie WHERE lexemesStarring @@ to_tsquery('Daniel-Radcliffe');
 url 
-----
(0 rows)

test=> SELECT url FROM movie WHERE lexemesStarring @@ to_tsquery('daniel-radcliffe');
 url 
-----
(0 rows)

test=> SELECT url FROM movie WHERE lexemesStarring @@ to_tsquery('emma-watson');
 url 
-----
(0 rows)

test=> SELECT url FROM movie WHERE lexemesStarring @@ to_tsquery('Emma-Watson');
 url 
-----
(0 rows)

test=> SELECT url FROM movie WHERE lexemesStarring @@ to_tsquery('Rupert-Grint');
 url 
-----
(0 rows)

test=> SELECT url FROM movie WHERE lexemesStarring @@ to_tsquery('rupert-grint');
 url 
-----
(0 rows)

test=> SELECT url FROM movie WHERE lexemesStarring @@ to_tsquery('potter');
            url             
----------------------------
 along-came-a-spider
 big-hero-6
 head-over-heels
 the-last-house-on-the-left
 the-tango-lesson
(5 rows)

test=> UPDATE movie SET rank2 = ts_rank(lexemesStarring,plainto_tsquery((SELECT Summary FROM movie WHERE url='potter')));
UPDATE 5229
test=> CREATE TABLE recommendationsBasedOnStarringField1 AS SELECT url, rank2 FROM movie WHERE rank < 0.99 ORDER BY rank DESC LIMIT 50;
SELECT 50
test=> \copy (SELECT * FROM recommendationsBasedOnStarringField1) to '/home/pi/RSL/top50recommendations.csv' WITH csv;
COPY 50
