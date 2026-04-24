-- PASSO 1: Criar o banco de dados biblioteca_municipal e selecionar
CREATE DATABASE biblioteca_municipal;
USE biblioteca_municipal;

-- PASSO 2: Criar a tabela livros
CREATE TABLE livros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150),
    autor VARCHAR(100),
    data_aquisicao DATE
);

-- PASSO 3: Inserir o livro "Dom Casmurro"
INSERT INTO livros (titulo, autor, data_aquisicao) VALUES
('Dom Casmurro', 'Machado de Assis', '2023-05-10');

-- PASSO 4: Selecionar todos os dados
SELECT * FROM livros;

-- PASSO 4 (continuação): Filtrar livros adquiridos após 01/01/2023
SELECT titulo, autor
FROM livros
WHERE data_aquisicao > '2023-01-01';

-- PASSO 5: Atualizar o nome do autor (id = 1)
UPDATE livros
SET autor = 'Machado de Assis (Edição Revisada)'
WHERE id = 1;

-- PASSO 6: Deletar o livro (id = 1)
DELETE FROM livros
WHERE id = 1;
