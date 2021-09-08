select "PlayerId" as "player_id", 
	   "NameFirst" as "first_name",
	   "NameLast" as "last_name", 
	   "CurrentHandle" as "player_handle", 
	   "CountryCode" as "country_code", 
	   "TotalUSDPrize" as "total_prize_usd", 
	   "Game" as "game", 
	   "Genre" as "genre"
from earnings_data 
where "CountryCode" like 'us'
and "TotalUSDPrize" > 700000



