DROP DATABASE IF EXISTS SpotifyDB;

CREATE DATABASE IF NOT EXISTS SpotifyDB;

USE SpotifyDB;

CREATE TABLE IF NOT EXISTS _user (
    _user_id INT AUTO_INCREMENT PRIMARY KEY,
    _password VARCHAR(255) NOT NULL,
    _first_name VARCHAR(255) NOT NULL,
    _last_name VARCHAR(255) NOT NULL,
    _email VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS _album (
    _album_id INT AUTO_INCREMENT PRIMARY KEY,
    _album_length INT NOT NULL,
    _year INT NOT NULL,
    _genre VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS _song (
	
    _song_id INT AUTO_INCREMENT PRIMARY KEY,
    _title VARCHAR(255) NOT NULL,
    _genre VARCHAR(255) NOT NULL,
    _length INT NOT NULL,
    _album_id INT NOT NULL,
    FOREIGN KEY(_album_id) REFERENCES _album(_album_id)
);


CREATE TABLE IF NOT EXISTS _playlist (
	
	_playlist_id INT AUTO_INCREMENT PRIMARY KEY,
    _name VARCHAR(255) NOT NULL,
    _user_id INT NOT NULL,
    _song_id INT NOT NULL,
    FOREIGN KEY(_user_id) REFERENCES _user(_user_id),
    FOREIGN KEY(_song_id) REFERENCES _song(_song_id)
    
);