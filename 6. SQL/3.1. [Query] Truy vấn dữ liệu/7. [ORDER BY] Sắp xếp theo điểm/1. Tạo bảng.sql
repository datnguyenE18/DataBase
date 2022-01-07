CREATE TABLE leaderboard(
    id SMALLINT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    NAME VARCHAR(50),
    score INT(10)
); 

INSERT INTO leaderboard
VALUES
	(1, 'vietcv', 3001),
    (2, 'kien_the_sun', 2401),
    (3, 'TieuMuoiAnhViet', 2477);