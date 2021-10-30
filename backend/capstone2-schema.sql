CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) UNIQUE NOT NULL,
    first_name VARCHAR(25) NOT NULL,
    last_name VARCHAR(25) NOT NULL,
    email VARCHAR(60) NOT NULL CHECK (position('@' IN email) > 1),
    password VARCHAR(20) NOT NULL
);

CREATE TABLE recipes (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    instructions TEXT NOT NULL,
    img_url TEXT
);

CREATE TABLE cocktails (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    instructions TEXT NOT NULL,
    img_url TEXT 
);

CREATE TABLE saved_recipes (
    user_id INTEGER REFERENCES users ON DELETE CASCADE,
    recipe_id INTEGER REFERENCES recipes ON DELETE CASCADE,
    PRIMARY KEY (user_id, recipe_id) 
);

CREATE TABLE saved_cocktails (
    user_id INTEGER REFERENCES users ON DELETE CASCADE,
    cocktail_id INTEGER REFERENCES cocktails ON DELETE CASCADE,
    PRIMARY KEY (user_id, cocktail_id)
);