INSERT INTO Artist(name)
VALUES('Deftones'),('Linkin Park'),('Papa Roach'),('Slipknot');

insert into Genre(name)
values ('Rock'),('AlternativeRock'),('PunkRock');

insert into Album(name, year)
values ('New Album', 2018), ('Fear', 2019), ('Remember', 2020);

insert into Album(name, year)
values ('Best Album', 2021), ('Second chance', 2017), ('Future life', 2019)

insert into Track(name, duration, album_id)
values ('Last Resort', 3.58, 3), ('Reckless', 3.23, 2), ('Lifeline', 3.54, 1), ('Scars', 2.44, 1), ('Players', 2.34, 2), ('My immortal', 3.55, 3);

insert into Track(name, duration, album_id)
values ('Simple song', 3.3, 5), ('IT song', 2.46, 4), ('The Best song', 3.46, 6);

insert into Compilation(name, year)
values ('White Pony', 2017), ('Ohms', 2022), ('White Rabbit', 2018), ('Coming Home', 2019);

insert into Genre_artist(Artist_id, Genre_id)
values (1, 1), (2, 1), (2, 2), (3, 2), (3, 3), (4, 1), (4, 2);

insert into albums_artist(Artist_id, Album_id)
values (1, 1), (2, 2), (2, 5), (3, 3), (3, 4),(4, 6);

insert into Compilations(Compilation_id,track_id)
values (1, 2),(2, 4), (2, 5), (3, 1), (3, 6), (4, 3);
