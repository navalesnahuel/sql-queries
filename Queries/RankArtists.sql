--Rank of the artists by popularity
SELECT 
    SPLIT_PART(artists, ',', 1) AS artist,
    COUNT(popularity) AS Artist_Popularity
FROM spotify
GROUP BY artist
ORDER BY Artist_Popularity DESC
LIMIT 10;


