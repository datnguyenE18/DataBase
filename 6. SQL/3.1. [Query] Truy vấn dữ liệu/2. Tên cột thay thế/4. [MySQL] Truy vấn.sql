SELECT
    CONCAT_WS(
        ', ',
        postal_code,
        address,
        district,
        city
    ) AS address
FROM
    address;