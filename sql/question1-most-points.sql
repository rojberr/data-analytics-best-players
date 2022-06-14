-- Question one
-- Which player scored the most points in 21th season?
SELECT * FROM all_seasons WHERE season > '2017' AND season < '2019' ORDER BY pts DESC;

-- Create a view
CREATE OR REPLACE VIEW most_points AS
SELECT * FROM all_seasons WHERE season > '2017' AND season < '2019' ORDER BY pts DESC;

-- Check view
SELECT * FROM most_points;