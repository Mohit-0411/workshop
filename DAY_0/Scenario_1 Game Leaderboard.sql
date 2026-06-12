CREATE TABLE leaderboard
(
    player_id int primary key,
    username  varchar(20),
    game      varchar(10),
    score     int,
    level     int
);



INSERT INTO leaderboard (player_id, username, game, score, level)
VALUES (1, 'Mohit', 'Chess', 2100, 42),
       (2, 'Sadikshya', 'Valorant', 450, 15),
       (3, 'Dipshika', 'FIFA', 1800, 8),
       (4, 'Libita', 'Chess', 2350, 50),
       (5, 'Aadarsha', 'Valorant', 320, 11),
       (6, 'Anbeshak', 'FIFA', 1200, 5);

SELECT *
from leaderboard;
SELECT username, score
FROM leaderboard;