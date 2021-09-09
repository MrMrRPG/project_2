# project_2: ETL 
<b>Members:</b></br>
Benji, Meagan, Josh, & Sam 

<b>Git Master:</b></br> Josh

<b>Topic:</b></br>
Gaming & E-sports 

<b>About:</b></br>
We like this dataset because it contains a variety of datatypes like strings and integers. We have the option to join our tables on the titles of the games, the genre of the games, or the released date of the games. The datasets provide information on earnings by game and by e-sport player which will provide us clarity on the financial performance of modern-day online games along with their popularity with viewers. 

<b>Games:</b></br>
Minecraft, 2k, Overwatch, League of Legends, R6-S (in general)

<b>Final Production Database:</b></br>
We chose using PostgreSQL over a NoSQL Database because our tables will require a lot of joining and a defined standard schema so we feel more comfortable with using a relational Database. 

<b>Datasets:</b></br>
Esports Players Earnings csv: </br>https://www.kaggle.com/jackdaoud/esports-earnings-for-players-teams-by-game?select=highest_earning_players.csv </br>

Esports Earnings 1998-2021: </br>https://www.kaggle.com/rankirsh/esports-earnings

<b>Business Rules:</b></br> 

--- table level rules ----
- Keep gaming data related to the US, filter out other countries 
- Only keep data for players that only over $700k
- drop any row that has any missing data, only complete data 

---- column level rules ---- 
- lower case 
- format date 
- unformat numbers --> INT

<b>Organizing Visuals for Presentation:</b></br> 
https://slidesgo.com/theme/linear-flowchart-infographics
