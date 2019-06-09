--This sql code generates the cheapest time to go to sfo using abnb
WITH most_cheapest AS 
	(SELECT min(l.price) 
 	FROM sfo_listings l
 	where price > 0) 
 	SELECT id,
		name, 
		host_name, 
		price, last_review
 	FROM sfo_listings l 
 	JOIN most_cheapest m 
 	ON m.min = l.price