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
Alter Table "General_Esport_Data" Rename Column "Total Earnings" To "Total_Earnings";
Alter Table "General_Esport_Data" Rename Column "Year Released" To "Year_Released";
Alter Table "General_Esport_Data" Rename Column "Online Earnings" To "Online_Earnings";
Alter Table "General_Esport_Data" Rename Column "Total Players" To "Total_Players";
Alter Table "General_Esport_Data" Rename Column "Total Tournaments" To "Total_Tournaments";