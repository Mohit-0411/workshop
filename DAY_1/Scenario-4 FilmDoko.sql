CREATE TABLE movies
(
    movie_id     INT PRIMARY KEY,
    title        VARCHAR(150) NOT NULL,
    genre        VARCHAR(50),
    release_year INT,
    rating       DECIMAL(3, 1),
    language     VARCHAR(50),
    duration_min INT
);

INSERT INTO movies (movie_id, title, genre, release_year, rating, language, duration_min)
VALUES (1, 'Pashupati Prasad', 'Drama', 2016, 8.8, 'Nepali', 135),
       (2, 'Chhakka Panja 3', 'Comedy', 2018, 7.6, 'Nepali', 140),
       (3, 'Loot 2', 'Action', 2017, 6.9, 'Nepali', 123),
       (4, 'Kabaddi', 'Comedy', 2014, 8.4, 'Nepali', 115),
       (5, 'Prem Geet', 'Romance', 2016, 7.5, 'Nepali', 130),
       (6, 'Kalo Pothi', 'Drama', 2015, 8.1, 'Nepali', 90),
       (7, 'Interstellar', 'Sci-Fi', 2014, 8.7, 'English', 169),
       (8, 'Parasite', 'Thriller', 2019, 8.5, 'Korean', 132),
       (9, 'Demon Slayer: Mugen Train', 'Action', 2020, 8.2, 'Japanese', 117);

SELECT * FROM movies;

SELECT title, rating AS imdb_score
FROM movies;

SELECT title, rating AS imdb_score
FROM movies;

SELECT title, genre
FROM movies
WHERE genre IN ('Comedy', 'Action', 'Romance');

SELECT title, language, duration_min AS runtime
FROM movies
WHERE language <> 'Nepali'
  AND duration_min < 120;