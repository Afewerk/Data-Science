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

Question 2. How many trips started at each station?

Code:
select dockcount, 
	name, 
	count(*) as dockcount_count	
from stations 
group by 1,2;

Output: 
dockcount = 27, name = stuart_at_market , dockcount_count = 1 .....

Question 3. What's the shortest trip that happened?

Code:
select dockcount, station_id, installation
from stations
group by 1,2,3
order by dockcount asc limit 3;
 
Output:
dockcount	station_id 	installation
11	4	"2013-08-06"
11	32	"2013-12-31"
11	35	"2013-08-15"



