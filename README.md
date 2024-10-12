# MySQL---Subqueries-and-Derived-Tables

# DAY 20 - Challenge 19

# SUBQUERIES AND DERIVED TABLES

As part of a 75-day data analysis challenge, this work on MySQL covers subqueries and derived tables


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



![Day 20 II](https://github.com/user-attachments/assets/4d9e483f-931a-4dec-8204-1472f54ff3e8)



# 3. Find out an average rating for Persons in respective countries if the average is greater than 3.70

SELECT Country_Name, 
ROUND(AVG(Rating),2) AS AvgRating
FROM Persons
GROUP BY Country_Name
HAVING ROUND(AVG(Rating),2) > 3.70;


![Day 20](https://github.com/user-attachments/assets/539e05cc-d803-439d-8783-ec18aa3d889c)



# 4. Find the countries with the same rating as the USA. (Use Subqueries)

SELECT Country_Name, Rating
FROM Persons WHERE Rating > 
(SELECT MAX(Rating) FROM Persons 
WHERE Country_Name = 'USA');

# 5. Select all countries whose population is greater than the average population of all nations.

SELECT Country_Name, Population
FROM Country WHERE Population > 
(SELECT AVG(Population) FROM Country);






https://github.com/user-attachments/assets/c43383c9-ef5b-4958-8c8f-f040f7030104



