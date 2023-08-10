--Название и продолжительность самого длинного трека.--
select name, duration from track
where duration  = (select MAX(duration) from track);

--Название треков, продолжительность которых не менее 3,5 минут(210 секунд).--
select name, duration from track
where duration >= 210
ORDER by duration DESC;

--Названия сборников, вышедших в период с 2018 по 2020 год включительно.--
select name from compilation
where year between 2018 and 2020;

--Исполнители, чьё имя состоит из одного слова.--
select name from Artist
where name not LIKE '% %';

--Название треков, которые содержат слово «My».--
select name from track
where string_to_array(lower("name"), ' ') && ARRAY['my'];

--Количество исполнителей в каждом жанре.--
select name, count(Artist_id) as Artist_quantity from Genre as G
join genre_artist as GA on G.genre_id = GA.Genre_id
group BY name 
order BY Artist_quantity DESC;

--Количество треков, вошедших в альбомы 2019–2020 годов.--
select COUNT(Track_id) as Track_quantity from Track as Tr
join Album as Al on Tr.album_id = Al.album_id
where Al."year" between 2019 and 2020;  

--Средняя продолжительность треков по каждому альбому.--
select Al."name" , AVG(duration) as avg_duration from Album as Al
join Track as Tr on Al.album_id  = Tr.album_id 
group by Al."name"  
order by avg_duration desc;

--Все исполнители, которые не выпустили альбомы в 2020 году.--
select Ar."name" from Artist as Ar
where Ar."name" not IN (select Ar2."name" from Artist as Ar2
	join albums_artist as Aa on Ar2.artist_id = Aa.artist_id 
	join Album as Al ON Aa.album_id = Al.album_id 
	where Al."year" = 2020);

--Названия сборников, в которых присутствует конкретный исполнитель.--
select C."name", A."name" from Compilation C 
join Compilations Cs on C.compilation_id = Cs.compilation_id 
join Track as TR on TR.track_id = Cs.track_id 
join Album as Al on Al.album_id = TR.album_id 
join Albums_artist as AA on AA.album_id = Al.album_id
join Artist as A on A.artist_id = AA.artist_id 
where A."name" = 'Linkin Park'
group by C."name", A."name";

