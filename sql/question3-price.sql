-- Question 3
-- How much do those players cost? What is they price?
SELECT
    PLAYER,
    SEASON1718
FROM nba1718salary
    ORDER BY SEASON1718 DESC;

-- Create a view
CREATE OR REPLACE VIEW price AS
SELECT
    PLAYER,
    SEASON1718
FROM nba1718salary
    ORDER BY SEASON1718 DESC;

-- Check view
SELECT * FROM price;
