CREATE TABLE players
(
    player_id    INT PRIMARY KEY,
    username     VARCHAR(50) NOT NULL UNIQUE,
    country      VARCHAR(50),
    score        INT           DEFAULT 0,
    level        INT           DEFAULT 1,
    hours_played DECIMAL(5, 2) DEFAULT 0.00,
    status       VARCHAR(20)   DEFAULT 'active'
);


INSERT INTO players (player_id, username, country, score, level, hours_played, status)
VALUES (1, 'Shadow', 'Nepal', 12500, 12, 45.50, 'active'),
       (2, 'Sonic', 'India', 4500, 4, 8.20, 'active'),
       (3, 'Samurai', 'Japan', 18000, 15, 62.00, 'active'),
       (4, 'Slayer', 'USA', 7500, 8, 3.50, 'active'),
       (5, 'Hacker', 'Nepal', 32000, 25, 120.00, 'active'),
       (6, 'Alpha', 'Canada', 5500, 6, 14.20, 'inactive'),
       (7, 'Gamer', 'India', 9000, 9, 28.10, 'active'),
       (8, 'Skylord', 'Japan', 21000, 18, 85.00, 'active'),
       (9, 'Swift', 'UK', 1500, 2, 1.50, 'active');

SELECT username, score AS high_score
FROM players
WHERE status = 'active';

SELECT *
FROM players
WHERE score BETWEEN 5000 AND 20000;

SELECT username, country
FROM players
WHERE country IN ('Nepal', 'India', 'Japan');

SELECT *
FROM players
WHERE username LIKE 'S%';

SELECT username, hours_played AS hrs, level
FROM players
WHERE hours_played < 10
  AND level > 5;

SELECT *
FROM players
ORDER BY username ASC, level DESC;

SELECT *
FROM players
ORDER BY score DESC
LIMIT 5;
