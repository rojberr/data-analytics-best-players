-- setup.sql

-- Data may need to be cleaned further before import

CREATE TABLE players (
  PLAYER_NAME text,
  TEAM_ID integer,
  PLAYER_ID integer,
  SEASON text
);

COPY players(player_name,team_id,player_id,season) FROM '/var/lib/postgresql/data/players.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE all_seasons (
  id numeric PRIMARY KEY,
  team_abbreviation text,
  age numeric,
  player_height numeric,
  player_weight numeric,
  college text,
  country text,
  draft_year numeric,
  draft_round numeric,
  draft_number numeric,
  gp numeric,
  pts numeric,
  reb numeric,
  ast numeric,
  net_rating numeric,
  oreb_pct numeric,
  dreb_pct numeric,
  usg_pct numeric,
  ts_pct numeric,
  ast_pct numeric,
  season text
);
COPY all_seasons(id,player_name,team_abbreviation,age,player_height,player_weight,
  college,country,draft_year,draft_round,draft_number,gp,pts,reb,ast,net_rating,
  oreb_pct,dreb_pct,usg_pct,ts_pct,ast_pct,season) 
FROM '/var/lib/postgresql/data/all_seasons.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE players (
  PLAYER_NAME text,
  TEAM_ID integer,
  PLAYER_ID integer,
  SEASON text
);
GAME_ID,TEAM_ID,TEAM_ABBREVIATION,TEAM_CITY,PLAYER_ID,PLAYER_NAME,NICKNAME,START_POSITION,COMMENT,MIN,FGM,FGA,FG_PCT,FG3M,FG3A,FG3_PCT,FTM,FTA,FT_PCT,OREB,DREB,REB,AST,STL,BLK,TO,PF,PTS,PLUS_MINUS
22101005,1610612750,MIN,Minnesota,1630162,Anthony Edwards,Anthony,F,,36:22,4.0,10.0,0.4,3.0,8.0,0.375,4.0,4.0,1.0,0.0,8.0,8.0,5.0,3.0,1.0,1.0,1.0,15.0,5.0


CREATE TABLE players (
  PLAYER_NAME text,
  TEAM_ID integer,
  PLAYER_ID integer,
  SEASON text
);
GAME_DATE_EST,GAME_ID,GAME_STATUS_TEXT,HOME_TEAM_ID,VISITOR_TEAM_ID,SEASON,TEAM_ID_home,PTS_home,FG_PCT_home,FT_PCT_home,FG3_PCT_home,AST_home,REB_home,TEAM_ID_away,PTS_away,FG_PCT_away,FT_PCT_away,FG3_PCT_away,AST_away,REB_away,HOME_TEAM_WINS
2022-03-12,22101005,Final,1610612748,1610612750,2021,1610612748,104,0.398,0.76,0.333,23,53,1610612750,113,0.422,0.875,0.357,21,46,0

CREATE TABLE players (
  PLAYER_NAME text,
  TEAM_ID integer,
  PLAYER_ID integer,
  SEASON text
);
TEAM_ID,LEAGUE_ID,SEASON_ID,STANDINGSDATE,CONFERENCE,TEAM,G,W,L,W_PCT,HOME_RECORD,ROAD_RECORD,RETURNTOPLAY
1610612756,00,22021,2022-03-12,West,Phoenix,67,53,14,0.791,28-8,25-6,

CREATE TABLE players (
  PLAYER_NAME text,
  TEAM_ID integer,
  PLAYER_ID integer,
  SEASON text
);
LEAGUE_ID,TEAM_ID,MIN_YEAR,MAX_YEAR,ABBREVIATION,NICKNAME,YEARFOUNDED,CITY,ARENA,ARENACAPACITY,OWNER,GENERALMANAGER,HEADCOACH,DLEAGUEAFFILIATION
00,1610612737,1949,2019,ATL,Hawks,1949,Atlanta,State Farm Arena,18729,Tony Ressler,Travis Schlenk,Lloyd Pierce,Erie Bayhawks
