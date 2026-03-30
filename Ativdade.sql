CREATE DATABASE biblioteca_municipal;
USE biblioteca_municipal;

CREATE TABLE livros(
    id PRIMARY KEY AUTO_INCREMENT,
    autor VARCHAR(50),
    nome_livro VARCHAR(100),
    data_aquisição DATE
    );
    --dados antigos--
INSERT INTO livros (autor, nome_livro, data_aquisição) 
VALUES 
('J.R.R. Tolkien', 'O Senhor dos Anéis', '2023-06-20'),
('Machado de Assis', 'Dom Casmurro', '2023-07-02'),
('Gabriel García Márquez', 'Cem Anos de Solidão', '2023-08-10'),
('Clarice Lispector', 'A Hora da Estrela', '2023-09-25');
--dados novos--
INSERT INTO livros(autor,nome_livro, data_aquisição) VALUES
('Antoine de Saint-Exupéry','O Pequeno Príncipe','2026-03-30'),
('George Orwel', '1984', '2026-03-30');
--Alterar nome--
UPDATE livros
SET autor=' George Orwell'
WHERE id=6;
--Remover pequeno principe--
DELETE FROM livros
WHERE id=5;
--mostrar alterações--
SELECT*FROM livros;