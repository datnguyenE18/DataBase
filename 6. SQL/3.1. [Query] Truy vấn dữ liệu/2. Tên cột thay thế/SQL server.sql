IF (EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES 
                    WHERE  TABLE_NAME = 'address'))

DROP TABLE address

CREATE TABLE address (
    address_ VARCHAR(250),
    postal_code INT,
    district VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO address(postal_code, address_, district, city)
VALUES (4166, '939 Probolinggo Loop', 'Galicia', 'A Corua (La Corua)'),
        (77459, '733 Mandaluyong Place', 'Asir', 'Abha')

SELECT CAST(postal_code AS VARCHAR(10)) + ', ' + address_ + ', ' + district + ', ' + city AS address
FROM address