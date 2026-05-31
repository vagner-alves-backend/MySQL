CREATE DATABASE empresa
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

USE empresa;

CREATE TABLE funcionarios (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE contrato (
	id_contrato INT AUTO_INCREMENT PRIMARY KEY,
    id_funcionario INT NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10, 2) NOT NULL,
    data_admicao DATE NOT NULL,
    
    UNIQUE (id_funcionario),
    FOREIGN KEY(id_funcionario) REFERENCES funcionarios(id) ON DELETE CASCADE
);
