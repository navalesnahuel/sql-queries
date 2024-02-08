-- Rank top 50 song by anything
CREATE TEMPORARY TABLE RankedSongs AS (
    SELECT name, loudness, danceability, popularity, 
           energy, speechiness, acousticness, liveness, valence, 
           daily_rank, artists,
           ROW_NUMBER() OVER (PARTITION BY name) AS rn
    FROM spotify
);

)
-- By Liveness
SELECT name, artists, liveness, daily_rank, popularity
FROM RankedSongs
WHERE rn = 1
ORDER BY liveness desc
limit 50;

-- By Dabceability
SELECT name, artists, danceability, daily_rank, popularity
FROM RankedSongs
WHERE rn = 1
ORDER BY danceability desc
limit 50;

-- By Popularity
SELECT name, artists, popularity, daily_rank
FROM RankedSongs
WHERE rn = 1
ORDER BY popularity desc
limit 50;

-- By Energy
SELECT name, artists, energy, daily_rank, popularity
FROM RankedSongs
WHERE rn = 1
ORDER BY energy desc
limit 50;

-- By Speechiness
SELECT name, artists, speechiness, daily_rank, popularity
FROM RankedSongs
WHERE rn = 1
ORDER BY speechiness desc
limit 50;

-- By Acousticness
SELECT name, artists, acousticness, daily_rank, popularity
FROM RankedSongs
WHERE rn = 1
ORDER BY acousticness desc
limit 50;

-- By Valence
SELECT name, artists, valence, daily_rank, popularity
FROM RankedSongs
WHERE rn = 1
ORDER BY valence desc
limit 50;
