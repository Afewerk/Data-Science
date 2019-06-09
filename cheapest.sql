
--creating an intermediate table
with cheapest as 
(
select   
	price, 
	date(calender_date) as cheap_date
	from sfo_calendar
	group by 1,2
)
select 
	sa.listing_id,
	sa.price,
	date(sa.calender_date)
from cal_price sa
	
inner join cheapest ch
on date(sa.calender_date) = ch.cheap_date
where sa.price between 10 and 236
order by price limit 10000;
