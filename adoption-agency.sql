CREATE TABLE animals(
    id SERIAL PRIMARY KEY,
    animal_name VARCHAR(50) NOT NULL,
    species_id INT NOT NULL REFERENCES animal_species(id),
    date_aquired DATE NOT NULL,
    date_adopted DATE,
    person_id INT REFERENCES person(id)
);

CREATE TABLE animal_species(
    id SERIAL PRIMARY KEY,
    species_name VARCHAR(50) NOT NULL,
    species_class INT NOT NULL REFERENCES animal_class(id)
);

CREATE TABLE animal_class(
    id SERIAL PRIMARY KEY,
    class_name VARCHAR(50) NOT NULL
);

CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    home_address VARCHAR (500),
    phone_number VARCHAR (20)
);