Select * from "Esport_data";
Alter Table "Esport_data" Rename to "General_Esport_Data";
Alter Table "General_Esport_Data" Rename Column "TotalEarnings" To "Total Earnings";
Alter Table "General_Esport_Data" Rename Column "ReleaseDate" To "Year Released";
Alter Table "General_Esport_Data" Rename Column "OnlineEarnings" To "Online Earnings";
Alter Table "General_Esport_Data" Rename Column "TotalPlayers" To "Total Players";
Alter Table "General_Esport_Data" Rename Column "TotalTournaments" To "Total Tournaments";
Delete from "General_Esport_Data" Where "Total Earnings" < 699999;
Select * from "General_Esport_Data";
Select * from "General_Esport_Data" Where "Total Earnings" < 699999;
Alter Table "General_Esport_Data" Drop Column "Genre";
Delete from "General_Esport_Data" Where "Online Earnings" < 699999;
Alter Table "Esport_data" Rename to "General_Esport_Data";
Alter Table "General_Esport_Data" Rename Column "Game" To "game";
Alter Table "General_Esport_Data" Rename Column "Total Earnings" To "total_earnings";
Alter Table "General_Esport_Data" Rename Column "Year Released" To "year_released";
Alter Table "General_Esport_Data" Rename Column "Online Earnings" To "online_earnings";
Alter Table "General_Esport_Data" Rename Column "Total Players" To "total_players";
Alter Table "General_Esport_Data" Rename Column "Total Tournaments" To "total_tournaments";

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

-- Changing column names
Select * from "ESport_Earnings";
Alter Table "ESport_Earnings" Rename Column "IdNo" To "player_id";
Alter Table "ESport_Earnings" Rename Column "TotalMoney" To "total_earnings_usd";
Alter Table "ESport_Earnings" Rename Column "GameName" To "game";
Alter Table "ESport_Earnings" Rename Column "PlayerNo" To "player_no";
Alter Table "ESport_Earnings" Rename Column "TournamentNo" To "tournament_id";
Alter Table "ESport_Earnings" Rename Column "Top_Country" To "top_country";
Alter Table "ESport_Earnings" Rename Column "Top_Country_Earnings" To "top_country_earnings";
Alter Table "ESport_Earnings" Rename Column "Releaseyear" To "year_released";
Alter Table "ESport_Earnings" Rename Column "Genre" To "genre";

--  Show "First-Person Shooter" and "Strategy" games
-- with US as the top country and total earnings less than $700,000
Delete
FROM "ESport_Earnings"
where "genre" <> 'First-Person Shooter'
    and "genre" <> 'Strategy'
    and "top_country" <> 'United States'
    and "total_earnings_usd" < 699999;

-- Order by release year in ascending order;
SELECT *
FROM "ESport_Earnings"
ORDER BY "year_released" ASC;

