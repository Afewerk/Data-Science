#SQL Basics 
Questions 1. Retrieve the ID's and durations for all the trips of duration greater than 500, ordered by duration

Code:
select bike_id, duration
from trips 
where duration > 500
order by duration;

Question 2. Every column of the stations table for station id 84.

Code:
select *
from stations 
where station_id=84;

Question 2. The min temperatures of all the occurrences of rain in zip 94301.

Code:
select mintemperaturef
from weather 
where zip = 94301;

Agregation & grouping
Assignment 
Question 1. What was the hottest day in our dataset? Where was that?

Code:
select maxtemperaturef, date, zip
from weather
group by 1, 2,3
order by maxtemperaturef desc 
limit 5;

Output: Temp = 134, Date = 2015-11-17, Zip = 94063


