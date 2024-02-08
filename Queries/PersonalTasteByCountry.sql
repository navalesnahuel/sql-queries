-- Countries with the most personal and not popular taste
select country, count(popularity) as Country_Popularity
from spotify s 
group by country
order by country_popularity desc;