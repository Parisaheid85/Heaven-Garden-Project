CREATE DATABASE heaven_garden;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    DOB DATE,
    origin VARCHAR(500),
    email VARCHAR(500),
    password_digest VARCHAR(500)
);



CREATE TABLE mygarden (
    id SERIAL PRIMARY KEY,
    image_url TEXT,
    sunlight text,
    fertilizer text,
    moisture text,
    comments text,
    user_id INTEGER not null
);


CREATE TABLE flowers (
    id SERIAL PRIMARY KEY,
    name TEXT
);







INSERT INTO flowers (name) VALUES ('Tulip');
INSERT INTO flowers (name) VALUES ('Rose');
INSERT INTO flowers (name) VALUES ('Sunflower');
INSERT INTO flowers (name) VALUES ('Lily');
INSERT INTO flowers (name) VALUES ('Daisy');
INSERT INTO flowers (name) VALUES ('Jasmin');
INSERT INTO flowers (name) VALUES ('Petunia');
INSERT INTO flowers (name) VALUES ('bugenvilija');
INSERT INTO flowers (name) VALUES ('chrysanthemum');
INSERT INTO flowers (name) VALUES ('Iris');
INSERT INTO flowers (name) VALUES ('Peony');
INSERT INTO flowers (name) VALUES ('Geranium');
INSERT INTO flowers (name) VALUES ('Nasturtiums.');
INSERT INTO flowers (name) VALUES ('Sweet Peas');
INSERT INTO flowers (name) VALUES ('Begonias');
INSERT INTO flowers (name) VALUES ('Hydrangeas');
INSERT INTO flowers (name) VALUES ('Zinnias');
INSERT INTO flowers (name) VALUES ('Impatiens');
INSERT INTO flowers (name) VALUES ('Pansies');
INSERT INTO flowers (name) VALUES ('African Violet');
INSERT INTO flowers (name) VALUES ('Cactus');
INSERT INTO flowers (name) VALUES ('Carnation');
INSERT INTO flowers (name) VALUES ('Hyacinth');
INSERT INTO flowers (name) VALUES ('Daffodil');
INSERT INTO flowers (name) VALUES ('Marigold');
INSERT INTO flowers (name) VALUES ('Bluebell');
INSERT INTO flowers (name) VALUES ('Orchid');
INSERT INTO flowers (name) VALUES ('Peruvian Lily');
INSERT INTO flowers (name) VALUES ('Gladiolus');
INSERT INTO flowers (name) VALUES ('Anemone');
INSERT INTO flowers (name) VALUES ('Astrantia');
INSERT INTO flowers (name) VALUES ('Astilbe');
INSERT INTO flowers (name) VALUES ('Aster');
INSERT INTO flowers (name) VALUES ('Angelonia');
INSERT INTO flowers (name) VALUES ('Aconitum');
INSERT INTO flowers (name) VALUES ('Aubreita deltoidea');
INSERT INTO flowers (name) VALUES ('Ballota');
