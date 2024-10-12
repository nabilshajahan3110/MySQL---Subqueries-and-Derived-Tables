

# DAY 20 - Challenge 19

# SUBQUERIES AND DERIVED TABLES

USE Challenge;

SELECT * FROM Country;
SELECT * FROM Persons;

# 1. Find the number of persons in each country.

SELECT Country_Name,
COUNT(ID) AS NoOfPersons FROM Persons
GROUP BY Country_Name;

# 2. Find the number of persons in each country sorted from high to low.

SELECT Country_Name, 
COUNT(ID) AS NoOfPersons FROM Persons 
GROUP BY Country_Name
ORDER BY COUNT(ID) DESC;

# 3. Find out an average rating for Persons in respective countries if the average is greater than 3.70

SELECT Country_Name, 
ROUND(AVG(Rating),2) AS AvgRating
FROM Persons
GROUP BY Country_Name
HAVING ROUND(AVG(Rating),2) > 3.70;

# 4. Find the countries with the same rating as the USA. (Use Subqueries)

SELECT Country_Name, Rating
FROM Persons WHERE Rating > 
(SELECT MAX(Rating) FROM Persons 
WHERE Country_Name = 'USA');

# 5. Select all countries whose population is greater than the average population of all nations.

SELECT Country_Name, Population
FROM Country WHERE Population > 
(SELECT AVG(Population) FROM Country);