"""
Query the two cities in STATION with the shortest and longest CITY names, 
as well as their respective lengths (i.e.: number of characters in the name). 
If there is more than one smallest or largest city, choose the one that comes 
first when ordered alphabetically.
"""

SELECT 
    city,
    MIN(LENGTH(city)) cont
from station
GROUP BY city
ORDER BY cont ASC
LIMIT 1;
SELECT 
    city,
    max(LENGTH(city)) cont
from station
GROUP BY city
ORDER BY cont desc
LIMIT 1;