use spotify;

select * from `datasetspotiy`;
select * from `spotify_artist_data_2023`;
select * from `spotify_data_12_20_2023` ;
select * from `spotify_features_data_2023`;
select * from `spotify_tracks_data_2023` ;
select * from `spotify-albums_data_2023` ;
select * from `high_popularity_spotify_data`;
select * from `low_popularity_spotify_data` ;
select * from `spotify-2023`;
select * from `spotify_youtube`;

show tables ;

select artists,track_name,track_genre from `datasetspotiy`;
select genre_0,artist_genres from `spotify_artist_data_2023`;
select artists,track_name from `spotify_data_12_20_2023`;

select count(*) from `spotify_data_12_20_2023` ;
select distinct genre_0 from `spotify_artist_data_2023`;
select * from `spotify_data_12_20_2023` where release_date =2020 ;

select track_name from `spotify-2023` where artist(s) = EdSheeran ;
select * from `high_popularity_spotify_data`
order by track_popularity desc limit 5;

select duration_ms from `high_popularity_spotify_data` order by duration_ms desc limit 10 ;
select duration_ms from  `low_popularity_spotify_data` order by duration_ms asc limit 10 ;

select track_popularity from `high_popularity_spotify_data` where track_popularity >=80 ;
select released_year from `spotify-2023` where released_year= 2015;

select track_popularity from `high_popularity_spotify_data` order by track_popularity desc;
select count(*) from `high_popularity_spotify_data` where playlist_genre='pop' ;
select avg(duration_ms) as avg_duration from `high_popularity_spotify_data` ;
select tempo from `high_popularity_spotify_data` order by tempo desc limit 10;
select count(*) as numberofsong from spotify_artist_data_2023 group by genre_0 order by numberofsong desc;
select artist_count, count(*) as totalsong from`spotify-2023` group by artist_count order by totalsong desc limit 3;
select artist_count,count(*) as numberofsong from `spotify-2023`group by artist_count order by numberofsong desc limit 5;

select playlist_genre ,avg(track_popularity) as avgpopular
 from `high_popularity_spotify_data`
 group by playlist_genre order by avgpopular desc;
select album_name, count(*) as popular from `datasetspotiy` group by album_name order by popular desc limit 5 ;
select playlist_genre, avg(tempo) as avgtempo from `high_popularity_spotify_data`
 group by playlist_genre order by avgtempo desc;
 
 select danceability from `low_popularity_spotify_data` where danceability >0.8 ;
 select * from `high_popularity_spotify_data` where  track_popularity between 60 and 80 order by track_popularity desc ;
select * from `high_popularity_spotify_data` where track_popularity between 60 and 80 order by track_popularity desc;

select released_year, count(*) as releaseyr from `spotify-2023`
 group by released_year order by released_year ;
select playlist_genre, max(track_popularity) as populargenre 
from `high_popularity_spotify_data` 
group by playlist_genre order by populargenre desc;
select track_album_name , avg(track_popularity) as trackpopul from `high_popularity_spotify_data`
 group by track_album_name order by trackpopul desc limit 5;
 select * from `low_popularity_spotify_data` where  duration_ms > 300000 order by duration_ms desc;
 select released_year, count(*) as releasedsong from `spotify-2023` 
 group by released_year order by releasedsong desc limit 1 ;
 
 select * from `high_popularity_spotify_data`
 where valence >0.7 and energy >0.7 
 order by valence desc , energy desc ;
 select * from `high_popularity_spotify_data` 
 where valence >0.7 and energy >0.7 
 order by valence , energy >0.7 desc;
select album_name , avg(danceability) as dancealbum from `spotify_data_12_20_2023` where  album_name='Adele' group by album_name ;







