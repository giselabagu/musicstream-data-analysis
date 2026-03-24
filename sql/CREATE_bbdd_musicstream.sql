DROP SCHEMA IF EXISTS musicstream;

CREATE SCHEMA musicstream;

USE musicstream;

-- TABLE 1
CREATE TABLE lastfm (
	artist_name VARCHAR(255) PRIMARY KEY, 	
    biography TEXT,							
    listeners INT,							
    playcount INT,
    similar_artists VARCHAR(500)
	);


    -- TABLE 2
CREATE TABLE spotify (	
	id VARCHAR(40) PRIMARY KEY,
    track_name VARCHAR(150),
    artist_name VARCHAR(255),								-- nuestra FK para lastfm
    `year` YEAR,   											-- backticks para que se reconociera como identificador (comillas no)
    genre ENUM('soundtrack', 'k-pop', 'afro', 'electronic'),
    album_type VARCHAR(45),
    release_date DATE,									
    popularity INT,
    CONSTRAINT fk_spotify_lastfm
		FOREIGN KEY (artist_name) 
        REFERENCES lastfm(artist_name)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);
 