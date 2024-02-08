-- Select DB
select name, artists, daily_rank, daily_movement, weekly_movement, 
country, popularity, duration_ms, danceability, energy, loudness, 
speechiness, acousticness, liveness, valence, tempo 
from spotify s 
where country = 'AR' and snapshot_date = '2023-11-21'
limit 10;




