CREATE TABLE IF NOT EXISTS Genre(
	id_genre SERIAL PRIMARY KEY,
	name_genre VARCHAR(150) NOT NULL
);

CREATE TABLE IF NOT EXISTS singer (
	id_singer SERIAL PRIMARY KEY,
	name_singer VARCHAR(50) NULL,
	surname VARCHAR(50) NULL,
	alias VARCHAR(50) NOT NULL,
	id_genre INTEGER REFERENCES Genre (id_genre)
);

CREATE TABLE IF NOT EXISTS album (
	id_album SERIAL PRIMARY KEY,
	name_album VARCHAR(150) not null,
	RecordYear INTEGER,
	Id_Singer INTEGER REFERENCES singer (id_singer)
);


CREATE TABLE IF NOT EXISTS track(
	id_track SERIAL PRIMARY KEY,
	Name_track VARCHAR(150),
	Duration INTEGER, --количество секунд
	Id_Album INTEGER REFERENCES album (id_album)
);