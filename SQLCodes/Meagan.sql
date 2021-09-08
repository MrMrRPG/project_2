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

--  Show "First-Person Shooter" and "Strategy" games
-- with US as the top country and total earnings less than $700,000
Delete
FROM "ESport_Earnings"
where "Genre" <> 'First-Person Shooter'
    and "Genre" <> 'Strategy'
    and "top_country" <> 'United States'
    and "total_earnings_usd" < 699999;

-- Order by release year in ascending order;
SELECT *
FROM "ESport_Earnings"
ORDER BY "year_released" ASC;