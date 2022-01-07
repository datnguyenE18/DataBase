CREATE TABLE university_professors(
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    university VARCHAR(225),
    university_shortname VARCHAR(50),
    university_city VARCHAR(50),
    FUNCTION TEXT,
    organization VARCHAR(225),
    organization_sector VARCHAR(50)
); INSERT INTO university_professors
VALUES(
    'Karl',
    'Aberer',
    'ETH Lausanne',
    'EPF',
    'Lausanne',
    'Chairman of L3S Advisory Board',
    'L3S Advisory Board',
    'Education & research'
),(
    'Karl',
    'Aberer',
    'ETH Lausanne',
    'EPF',
    'Lausanne',
    'Member Conseil of Zeno-Karl Schindler Foundation',
    'Zeno-Karl Schindler Foundation',
    'Education & research'
),(
    'Karl',
    'Aberer',
    'ETH Lausanne',
    'EPF',
    'Lausanne',
    'Member of Conseil Fondation IDIAP',
    'Fondation IDIAP',
    'Education & research'
),(
    'Karl',
    'Aberer',
    'ETH Lausanne',
    'EPF',
    'Lausanne',
    'Panel Member',
    'SNF Ambizione Program',
    'Education & research'
);