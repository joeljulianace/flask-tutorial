DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS post;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT UNIQUE NOT NULL,
    password TEXT NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    author_id INTEGER REFERENCES users NOT NULL,
    created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    title TEXT NOT NULL,
    body TEXT NOT NULL
);


-- CREATE TABLE flights(
--     id SERIAL PRIMARY KEY,
--     origin VARCHAR NOT NULL,
--     destination VARCHAR NOT NULL,
--     duration INTEGER NOT NULL
-- );

-- CREATE TABLE passengers(
--     id SERIAL PRIMARY KEY,
--     name VARCHAR NOT NULL,
--     flight_id INTEGER REFERENCES flights
-- );
