# # Adding a different rank to create a rank in the table for title
test=> ALTER TABLE movie ADD rank1 float4;
ALTER TABLE

# Updating the table
test=> UPDATE movie SET rank1 = ts_rank(lexemesTitle,plainto_tsquery((SELECT Title FROM movie WHERE url='potter'))); 
ERROR:  column "lexemestitle" does not exist
LINE 1: UPDATE movie SET rank1 = ts_rank(lexemesTitle,plainto_tsquer...

# Adding lexemes for title
test=> ALTER TABLE movie ADD lexemesTitle tsvector;
ALTER TABLE
test=> UPDATE movie SET lexemesTitle = to_tsvector(Title);
UPDATE 5229

# Checking what movies have a similar title to 'potter'
test=> SELECT url FROM movie WHERE lexemesTitle @@ to_tsquery('potter');
                    url                    
-------------------------------------------
 harry-potter-and-the-sorcerers-stone
 harry-potter-and-the-chamber-of-secrets
 harry-potter-and-the-prisoner-of-azkaban
 harry-potter-and-the-goblet-of-fire
 harry-potter-and-the-order-of-the-phoenix
 harry-potter-and-the-half-blood-prince
(6 rows)

# Updating the table 'movie' 
test=> UPDATE movie SET rank1 = ts_rank(lexemesTitle,plainto_tsquery((SELECT Title FROM movie WHERE url='potter')));
UPDATE 5229

# Creating the new table with the rank < 0.99 to it
test=> CREATE TABLE recommendationsBasedOnTitleField1 AS SELECT url, rank1 FROM movie WHERE rank < 0.99 ORDER BY rank DESC LIMIT 50;
SELECT 50


# Creating a copy of the table in the RSL-folder
test=> \copy (SELECT * FROM recommendationsBasedOnTitleField1) to '/home/pi/RSL/top50recommendationsHarryTitle.csv' WITH csv;
COPY 50
