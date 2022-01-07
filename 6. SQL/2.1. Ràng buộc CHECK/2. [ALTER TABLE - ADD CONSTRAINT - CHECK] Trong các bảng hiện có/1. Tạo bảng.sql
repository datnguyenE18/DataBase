CREATE TABLE prices_list (
	id SERIAL PRIMARY KEY,
	product_id INTEGER NOT NULL,
	price NUMERIC NOT NULL,
	discount NUMERIC NOT NULL,
	valid_from DATE NOT NULL,
	valid_to DATE NOT NULL
);