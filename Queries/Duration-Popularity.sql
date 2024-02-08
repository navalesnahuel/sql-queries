-- See if the duration affects on the popularity
WITH Popularity_Duration AS (
    SELECT name, duration_ms, popularity,
           ROW_NUMBER() OVER (PARTITION BY name) AS pd
    FROM spotify
    ORDER BY duration_ms desc
)
SELECT name, duration_ms, popularity
FROM Popularity_Duration
WHERE pd = 1 and duration_ms > 400000 and popularity >= 80
LIMIT 50;