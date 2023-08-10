INSERT INTO Artist(name)
VALUES('Deftones'),('Linkin Park'),('Papa Roach'),('Slipknot');

insert into Genre(name)
values ('Rock'),('AlternativeRock'),('PunkRock');

insert into Album(name, year)
values ('New Album', 2018), ('Fear', 2019), ('Remember', 2020);

insert into Album(name, year)
values ('Best Album', 2021), ('Second chance', 2017), ('Future life', 2019);

insert into Track(name, duration, album_id)
values ('Last Resort', 240, 3), ('Reckless', 265, 2), ('Lifeline', 196, 1), ('Scars', 204, 1), ('Players', 186, 2), ('My immortal', 211, 3);

insert into Track(name, duration, album_id)
values ('Simple song', 178, 5), ('IT song', 199, 4), ('The Best song', 170, 6);

insert into Track(name, duration, album_id)
values ('oh my god', 120, 2), ('myself', 110, 3), ('by myself by', 150, 1), ('beemy', 160, 1);

insert into Compilation(name, year)
values ('White Pony', 2017), ('Ohms', 2022), ('White Rabbit', 2018), ('Coming Home', 2019);

insert into Genre_artist(Artist_id, Genre_id)
values (1, 1), (2, 1), (2, 2), (3, 2), (3, 3), (4, 1), (4, 2);

insert into albums_artist(Artist_id, Album_id)
values (1, 1), (2, 2), (2, 5), (3, 3), (3, 4),(4, 6);

insert into Compilations(Compilation_id,track_id)
values (1, 2),(2, 4), (2, 5), (3, 1), (3, 6), (4, 3);
