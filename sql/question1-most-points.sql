-- Question one
-- Which player scored the most points in 21th season?
SELECT * FROM all_seasons WHERE season > '2021' ORDER BY pts DESC;
