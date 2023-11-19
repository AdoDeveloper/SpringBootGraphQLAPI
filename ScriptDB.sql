CREATE DATABASE IF NOT EXISTS escuela_graphql;
USE escuela_graphql;

-- Crear la tabla courses
CREATE TABLE IF NOT EXISTS courses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    category VARCHAR(255) NOT NULL,
    teacher VARCHAR(255) NOT NULL
);

-- Crear la tabla students
CREATE TABLE IF NOT EXISTS students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    age INT NOT NULL,
    course_id INT,
    FOREIGN KEY (course_id) REFERENCES courses(id)
);

INSERT INTO courses (name, category, teacher) VALUES ('Matematicas', 'Ciencias exactas', "Juan Diego Ossa");
INSERT INTO courses (name, category, teacher) VALUES ('Biologia', 'Ciencias', "Leandro Jarammillo");
INSERT INTO courses (name, category, teacher) VALUES ('Programacion', 'Tecnologia', "Neiro Figueroa");

INSERT INTO students (name, last_name, age, course_id) VALUES ('John', 'Serna', '26', 1);
INSERT INTO students (name, last_name, age, course_id) VALUES ('Andrea', 'Calle', '21', 2);
INSERT INTO students (name, last_name, age, course_id) VALUES ('Anyi', 'Hoyos', '22', 1);
INSERT INTO students (name, last_name, age, course_id) VALUES ('Santiago', 'Perez', '24', 3);