import csv as csv
import numpy as np

# We have to read the CSV-file to be able to get to the data and define the variables.
with open("/home/pi/RSL/VE/userReviews.csv") as data:
	review_data = csv.reader(data)
	head = next(review_data)
	data = list(review_data)
	
# We first have to print a couple of credentials because it is a nested list.
print('Length of the list is: ', len(data))

# We are going to define the X-variable. 
# The buildup of the file is as follows: [0,1,2,3,4,5,6,7,8,9,10] and [6] is divided into [0,1,2,3,4] and holds the reviews.
# defining the categories: 0=movieName, 1=metaScore, 2=Author, 3=AuthorHref, 4=Date, 5=Year, 6=Summary, 7=YesCount, 8=TotalCount, 9=ThumbsUp, 10=ThumbsDown.

# The next step is that we have to split the strings, so that we get indipended variables.
movies = data[:][0]
for i in range(0,10000):
	movies = [data[i][0].split(';') for i in range(10000)]

# We have to define variable X
X = []
for i in range(0,10000):
	X += [movies[i][2]]
              
# We have to define variable Y
Y = []
fav_movie = "captain-phillips"
for i in range(0,10000):
	if movies[i][0] == fav_movie:
		Y += [movies[i][2]]
print(Y)		

# We have to define variable Z
Z = []
for j in range (0,len(Y)):
	recfilm = Y[j]
	for i in range(0,10000):
		if movies[i][2] == recfilm:
			Z += [movies[i][0]]
print(Z)
