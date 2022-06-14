-- Connect 3 databases
-- To be able to view a summary of all data
-- I created a view with joined tables

CREATE VIEW summary
AS
SELECT
    seasons.player_name,
    seasons.pts,
    injuries.injuries_occurences,
    salary.pay
FROM all_seasons seasons
         INNER JOIN (SELECT relinquished, COUNT(injuries_2020.relinquished) AS injuries_occurences FROM injuries_2020 GROUP BY relinquished) injuries
                    ON seasons.player_name = injuries.relinquished
         INNER JOIN (SELECT player, SUM(season1718) AS pay FROM nba1718salary GROUP BY player) salary
                    ON seasons.player_name = salary.player;