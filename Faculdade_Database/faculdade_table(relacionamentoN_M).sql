CREATE DATABASE universidade
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE universidade;

CREATE TABLE alunos (
	id_alunos INT AUTO_INCREMENT PRIMARY KEY,
    nome_aluno VARCHAR(100) NOT NULL
);

CREATE TABLE cursos (
	id_cursos INT AUTO_INCREMENT PRIMARY KEY,
    nome_curso VARCHAR(100) NOT NULL
);

CREATE TABLE matriculas (
	id_aluno INT,
    id_curso INT,
    data_matricula DATE NOT NULL,
    
    PRIMARY KEY(id_aluno, id_curso),
    
    FOREIGN KEY(id_aluno) REFERENCES alunos(id_alunos) ON DELETE CASCADE,
    FOREIGN KEY(id_curso) REFERENCES cursos(id_cursos) ON DELETE CASCADE
);
