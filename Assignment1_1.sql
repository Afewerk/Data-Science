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
