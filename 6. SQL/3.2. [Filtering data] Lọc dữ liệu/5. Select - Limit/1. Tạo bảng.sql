CREATE TABLE earthquakes (
    id SMALLINT PRIMARY KEY,
    date VARCHAR(10),
    latitude NUMERIC(10,3), /*Chỉ vĩ độ*/
    longitude NUMERIC(10,3),/*Chỉ kinh độ*/
    depth INTEGER, /*Chỉ độ nông-sâu*/
    magnitude NUMERIC(10,1), /*Chỉ cường độ*/
    country TEXT
);

INSERT INTO earthquakes
VALUES
	(1,	'22-05-1960',	-38.143,	-73.407,	25,	9.5,	'Indonesia'),
    (2,	'28-03-1964',	60.908,	-147.339,	25,	9.2,	'Papua New Guinea'),
    (3,	'22-05-1960',	-38.143,	-73.407,	18,	9.5,	'Papua New Guinea'),
    (4,	'02-08-1906',	3.295,	95.982,	30,	9.1,	'Philipinese');