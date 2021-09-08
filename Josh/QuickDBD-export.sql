-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE "ESports_Earnings" (
    "IdNo" int   NOT NULL,
    "TotalMoney" float   NOT NULL,
    "GameName" varchar(255)   NOT NULL,
    "Genre" varchar(255)   NOT NULL,
    "PlayerNo" int   NOT NULL,
    "TournamentNo" int   NOT NULL,
    "Top_Country" varchar(255)   NOT NULL,
    "Top_Country_Earnings" float   NOT NULL,
    "Releaseyear" date   NOT NULL,
    CONSTRAINT "pk_ESports_Earnings" PRIMARY KEY (
        "IdNo","GameName"
     )
);

CREATE TABLE "GeneralEsportsData" (
    "Game" varchar(255)   NOT NULL,
    "ReleaseDate" date   NOT NULL,
    "Genre" varchar(255)   NOT NULL,
    "TotalEarnings" float   NOT NULL,
    "OnlineEarnings" float   NOT NULL,
    "TotalPlayers" int   NOT NULL,
    "TotalTournaments" int   NOT NULL,
    CONSTRAINT "pk_GeneralEsportsData" PRIMARY KEY (
        "Game"
     )
);

CREATE TABLE "highest_earning_players" (
    "PlayerId" int   NOT NULL,
    "NameFirst" varchar(255)   NOT NULL,
    "NameLast" varchar(255)   NOT NULL,
    "CurrentHandle" varchar(255)   NOT NULL,
    "CountryCode" varchar(255)   NOT NULL,
    "TotalUSDPrize" float   NOT NULL,
    "Game" varchar(255)   NOT NULL,
    "Genre" varchar(255)   NOT NULL,
    CONSTRAINT "pk_highest_earning_players" PRIMARY KEY (
        "PlayerId","CurrentHandle"
     )
);

ALTER TABLE "ESports_Earnings" ADD CONSTRAINT "fk_ESports_Earnings_GameName" FOREIGN KEY("GameName")
REFERENCES "GeneralEsportsData" ("Game");

ALTER TABLE "ESports_Earnings" ADD CONSTRAINT "fk_ESports_Earnings_Genre" FOREIGN KEY("Genre")
REFERENCES "highest_earning_players" ("Genre");

ALTER TABLE "GeneralEsportsData" ADD CONSTRAINT "fk_GeneralEsportsData_Game" FOREIGN KEY("Game")
REFERENCES "highest_earning_players" ("Game");

ALTER TABLE "GeneralEsportsData" ADD CONSTRAINT "fk_GeneralEsportsData_TotalEarnings" FOREIGN KEY("TotalEarnings")
REFERENCES "ESports_Earnings" ("TotalMoney");

ALTER TABLE "highest_earning_players" ADD CONSTRAINT "fk_highest_earning_players_Game" FOREIGN KEY("Game")
REFERENCES "ESports_Earnings" ("GameName");

