-- PASSO 1: Criar o banco de dados e selecionar
CREATE DATABASE conecta;
USE conecta;

-- PASSO 1 (continuação): Criar tabela usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    data_nascimento DATE
);

-- PASSO 2: Inserir usuários (ordem das colunas definida)
INSERT INTO usuarios (nome, email, data_nascimento) VALUES
('Lucas Andrade', 'lucas@gmail.com', '2000-05-10'),
('Fernanda Lima', 'fernanda@gmail.com', '1995-08-22'),
('Bruno Rocha', 'bruno@gmail.com', '2003-11-15'),
('Carla Mendes', 'carla@gmail.com', '1998-02-03');

-- PASSO 3: Selecionar todos os usuários
SELECT * FROM usuarios;

-- PASSO 3 (continuação): Filtrar usuários nascidos após uma data específica
SELECT *
FROM usuarios
WHERE data_nascimento > '2000-01-01';

-- PASSO 4: Atualizar email de um usuário específico (exemplo id = 1)
UPDATE usuarios
SET email = 'lucas.novo@gmail.com'
WHERE id = 1;

-- PASSO 4 (continuação): Deletar usuário específico (exemplo id = 2)
DELETE FROM usuarios
WHERE id = 2;
