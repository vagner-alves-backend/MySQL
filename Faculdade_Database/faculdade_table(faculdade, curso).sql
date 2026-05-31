CREATE DATABASE universidade
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE universidade;

CREATE TABLE faculdade (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE cursos (
	id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    faculdade_id INT,
    FOREIGN KEY(faculdade_id) REFERENCES faculdade(id)
);

