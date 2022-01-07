UPDATE reservedNicknames
SET
    id = CONCAT('rename - ', id),
    nickname = CONCAT('rename - ', nickname)
WHERE LENGTH(nickname) != 8;