-- create-tables.sql
-- This script will be executed during first launch od Postgres Container

-- Data may need to be cleaned further before import

CREATE TABLE SEASONS (
  SEASON date,
  SEASON_DESC text,

  PRIMARY KEY(SEASON)
);
-- COPY SEASONS(SEASON, SEASON_DESC) 
-- FROM '/var/lib/postgresql/data/all_seasons_2.csv' DELIMITER ',' CSV HEADER;

CREATE TABLE PLAYERS (
  PLAYER_NAME text,
  BORN date,
  PLAYER_HEIGHT INT,
  PLAYER_WEIGHT INT,
  PLAYER_COLLEGE text,
  COUNTRY text,
  DRAFT_YEAR date,

  PRIMARY KEY(PLAYER_NAME)
);


CREATE TABLE PLAYER_INJURIES (
  INJURY_ID INT GENERATED ALWAYS AS IDENTITY,
  PLAYER_NAME text,
  GAME_ID INT NOT NULL,
  RELINQUISHED text,
  NOTES text,

  PRIMARY KEY(INJURY_ID),

  CONSTRAINT fk_gameid
    FOREIGN KEY(PLAYER_NAME)
      REFERENCES players(PLAYER_NAME)
);


CREATE TABLE PLAYER_SALARIES (
  SALARY_ID INT GENERATED ALWAYS AS IDENTITY,
  PLAYER_NAME text NOT NULL,
  SEASON_TOTAL INT,
  SEASON date NOT NULL,

  PRIMARY KEY(SALARY_ID),

  CONSTRAINT fk_playername
    FOREIGN KEY(PLAYER_NAME)
      REFERENCES players(player_name),
  
    CONSTRAINT fk_season
    FOREIGN KEY(SEASON)
      REFERENCES seasons(SEASON)
);


CREATE TABLE PLAYER_SEASON_RESULTS (
  SCORE_ID INT GENERATED ALWAYS AS IDENTITY,
  PLAYER_NAME text NOT NULL,
  SEASON date,
  TEAM_ABBREVIATION text,
  SEASON_GAMES_PLAYED INT,
  SEASON_POINTS INT,
  SEASON_REBOUNDS INT,
  SEASON_ASSISTS INT,
  SEASON_NET_RAT INT,

  PRIMARY KEY(SCORE_ID),

  CONSTRAINT fk_playername
    FOREIGN KEY(PLAYER_NAME)
      REFERENCES players(player_name),
  
    CONSTRAINT fk_season
    FOREIGN KEY(SEASON)
      REFERENCES seasons(SEASON)
);


CREATE DATABASE metabase;