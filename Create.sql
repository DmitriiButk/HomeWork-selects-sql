create table if not exists Artist (
	Artist_id SERIAL primary key,
	name VARCHAR(60) not null
);

create table if not exists Genre (
	Genre_id SERIAL primary key,
	name VARCHAR(60) unique not NULL
);

create table if not exists Album (
	Album_id SERIAL primary key,
	name VARCHAR(60) not null,
	year integer not NULL
);

create table if not exists Track (
	Track_id SERIAL primary key,
	name VARCHAR(60) not NULL,
	duration integer not NULL,
	album_id integer not NULL references Album(Album_id)
);

create table if not exists Compilation (
	Compilation_id SERIAL primary key,
	name VARCHAR(100) not NULL,
	year integer NOT NULL
);

create table if not exists Genre_artist (
	ga_id SERIAL primary key,
	Artist_id integer not null references Artist(Artist_id),
	Genre_id integer not null references Genre(Genre_id)
);

create table if not exists Albums_artist (
	aa_id SERIAL primary key,
	Artist_id integer not NULL references Artist(Artist_id),
	Album_id integer NOT NULL references Album(Album_id)
);

create table if not exists Compilations (
	c_id SERIAL primary key,
	Compilation_id integer not null references Compilation(Compilation_id),
	Track_id integer not null references Track(Track_id)
);
