-- setup.sql

-- Data may need to be cleaned further before import
CREATE TABLE all_seasons (
  id numeric PRIMARY KEY,
  player_name text,
  team_abbreviation text,
  age numeric,
  player_height numeric,
  player_weight numeric,
  college text,
  country text,
  draft_year text,
  draft_round text,
  draft_number text,
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


CREATE TABLE games (
  GAME_DATE_EST text,
  GAME_ID numeric,
  GAME_STATUS_TEXT text,
  HOME_TEAM_ID numeric,
  VISITOR_TEAM_ID numeric,
  SEASON numeric,
  TEAM_ID_home numeric,
  PTS_home numeric,
  FG_PCT_home numeric,
  FT_PCT_home numeric,
  FG3_PCT_home numeric,
  AST_home numeric,
  REB_home numeric,
  TEAM_ID_away numeric,
  PTS_away numeric,
  FG_PCT_away numeric,
  FT_PCT_away numeric,
  FG3_PCT_away numeric,
  AST_away numeric,
  REB_away numeric,
  HOME_TEAM_WINS numeric
);
COPY games(GAME_DATE_EST,GAME_ID,GAME_STATUS_TEXT,HOME_TEAM_ID,VISITOR_TEAM_ID,
SEASON,TEAM_ID_home,PTS_home,FG_PCT_home,FT_PCT_home,FG3_PCT_home,AST_home,REB_home,
TEAM_ID_away,PTS_away,FG_PCT_away,FT_PCT_away,FG3_PCT_away,AST_away,REB_away,HOME_TEAM_WINS) 
FROM '/var/lib/postgresql/data/games.csv' DELIMITER ',' CSV HEADER;


CREATE TABLE players (
  PLAYER_NAME text,
  TEAM_ID integer,
  PLAYER_ID integer,
  SEASON text
);
COPY players(PLAYER_NAME, TEAM_ID, PLAYER_ID, SEASON) 
FROM '/var/lib/postgresql/data/players.csv' DELIMITER ',' CSV HEADER;
