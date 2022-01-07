ALTER TABLE prices_list ADD CONSTRAINT price_discount_check CHECK ( 
	price > 0 AND discount >= 0 AND price > discount 
);