CREATE TABLE monsters(
    id serial,
    name character varying(50),
    personality varying(50)
);

CREATE TABLE habitats(
    id serial,
    name character varying(50),
    climate character varying(50),
    temerature int
);

CREATE TABLE lives(
    moster character varying(50),
    habitat character varying(50)
);

INSERT INTO monsters(name, personality)
VALUES
('Fluffy', 'aggressive'),
('Noodles', 'impatient'),
('Rusty', 'passionate');

INSERT INTO habitats(name, climate, temerature)
VALUES
('desert', 'dry', 100),
('forrest', 'haunted', 70),
('mountain', 'icy', 30);

INSERT INTO lives(monster, habitat)
VALUES
('Fluffy', 'desert'),
('Noodles', 'forrest'),
('Rusty', 'mountain');

