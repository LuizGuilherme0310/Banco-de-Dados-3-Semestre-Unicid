CREATE DATABASE sistema_gestao;
USE sistema_gestao;

CREATE SCHEMA corporativo;

CREATE TABLE usuarios (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(100),
	email VARCHAR(100),
	data_nascimento DATE
);

INSERT INTO usuarios (nome, email, data_nascimento) VALUES ('Ana Clara Silva', 'ana.silva@empresa.com.br', '1990-05-14');
INSERT INTO usuarios (nome, email, data_nascimento) VALUES ('Bruno Mendes', 'bruno.mendes@empresa.com.br', '1985-11-20');
INSERT INTO usuarios (nome, email, data_nascimento) VALUES ('Carolina Oliveira', 'carolina.oliveira@empresa.com.br', '1993-02-10');
INSERT INTO usuarios (nome, email, data_nascimento) VALUES ('Diego Fernandes', 'diego.fernandes@empresa.com.br', '1988-08-15');

SELECT * FROM usuarios;

UPDATE usuarios
SET email = 'diego.f.novo@empresa.com.br'
WHERE id = 4;

DELETE FROM usuarios
WHERE id = 6;