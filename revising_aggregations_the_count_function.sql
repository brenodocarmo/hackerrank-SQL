"""
Query a count of the number of cities in CITY having a Population larger than 100000
"""

select 
    count(distinct name) 
from city
where population > 100000 

