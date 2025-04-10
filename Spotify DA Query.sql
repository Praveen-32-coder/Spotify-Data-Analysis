create database spotify_db
use spotify_db

CREATE TABLE Spotify_Tracks (
id int auto_increment primary key,
track_name varchar(270),
artist varchar(270),
album varchar(270),
popularity int,
duration_minutes float
)

select * from spotify_tracks
truncate table spotify_tracks

select track_name,artist,album,popularity from spotify_tracks order by popularity desc

select avg(popularity) as popularity_average from spotify_tracks

select track_name,artist,duration_minutes from spotify_tracks where duration_minutes>3

select 
	case
		when popularity>=85 then 'Very Popular'
        when popularity>=70 then 'Popular'
        when popularity<=65 then 'Poor'
	end as popularity_range,
    count(*) as track_count from spotify_tracks group by popularity_range
