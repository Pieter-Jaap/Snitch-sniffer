# Import the data from the csv-file
import csv

with open('/home/pi/RSL/VE/userReviews.csv', encoding='utf-8-sig') as reviews:
    reader = csv.DictReader(reviews,delimiter= ';')
    review_data = list(reader)

# Defining X for Author
X = list()
for row in review_data:
    X.append(row['Author'])

# Defining Y for my favorite movie Harry Potter and the Chamber of Secrets
Y = list()
for row in review_data:
    if row['movieName'] == 'harry-potter-and-the-chamber-of-secrets':
        Y.append(row['Author']) 
print(Y)

# Defining Z as prove of working
Z = list()
for row in review_data:
    if row['Author'] in Y:
        Z.append(row['movieName'])

textfile = open('resultsZ.txt', 'w')
for element in Z:
    textfile.write(element+"\n")
textfile.close()    