-- Question 2
-- Which player had the least injuries in last season?
SELECT
    RELINQUISHED,
    COUNT(RELINQUISHED)
FROM injuries_2020
GROUP BY RELINQUISHED
ORDER BY COUNT(RELINQUISHED) DESC;

-- Create a view
CREATE OR REPLACE VIEW least_injuries AS
SELECT
    RELINQUISHED,
    COUNT(RELINQUISHED)
FROM injuries_2020
GROUP BY RELINQUISHED
ORDER BY COUNT(RELINQUISHED) DESC;

-- Check view
SELECT * FROM least_injuries;
