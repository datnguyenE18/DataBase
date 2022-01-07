CREATE TABLE ingredient(
    id SERIAL PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL
); 

CREATE TABLE meal(
    id SERIAL PRIMARY KEY,
    NAME VARCHAR(50) NOT NULL,
    avg_student_rating NUMERIC,
    total_calories SMALLINT NOT NULL
); 

CREATE TABLE meal_DATE(
    meal_id INTEGER REFERENCES meal(id),
    DATE_served DATE NOT NULL
); 

CREATE TABLE meal_ingredient(
    meal_id INTEGER REFERENCES meal(id),
    ingredient_id INTEGER REFERENCES ingredient(id)
);