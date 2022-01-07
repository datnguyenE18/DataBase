CREATE TABLE fortune(
	rank INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(50),
    name VARCHAR(100),
    sector VARCHAR(100),
    industry VARCHAR(100),
    employees INT
);

INSERT INTO fortune
VALUES
	(1,	'Walmart',	'Wal-Mart Stores, Inc.',	'Retailing',	'General Merchandisers'	,2300000),
(2,	'Berkshire Hathaway'	,'Berkshire Hathaway Inc.',	'Financials',	'Insurance: Property and Casualty',	367700),
(3,	'Apple',	'Apple, Inc.',	'Technology',	null,	116000),
(4,	'Exxon Mobil',	'Exxon Mobil Corporation'	,null	,null,	72700)