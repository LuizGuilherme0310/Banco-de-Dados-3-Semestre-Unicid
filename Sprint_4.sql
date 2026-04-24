-- PASSO 1: Criar o banco de dados e selecionar
CREATE DATABASE techforge;
USE techforge;

-- PASSO 2: Criar a tabela projetos
CREATE TABLE projetos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    linguagem VARCHAR(50),
    orcamento DECIMAL(10,2),
    data_inicio DATE
);

-- PASSO 3: Inserir 5 projetos
INSERT INTO projetos (nome, linguagem, orcamento, data_inicio) VALUES
('Sistema de Login', 'Python', 12000.00, '2025-01-10'),
('Motor de Física', 'C++', 15000.00, '2025-02-15'),
('Otimização de Consultas', 'SQL', 8000.00, '2025-03-01'),
('App Mobile', 'Python', 20000.00, '2025-04-05'),
('Game Engine', 'C++', 25000.00, '2025-05-20');

-- PASSO 4: Exibir nome e orçamento dos projetos em C++
SELECT nome, orcamento
FROM projetos
WHERE linguagem = 'C++';

-- PASSO 5: Atualizar orçamento do projeto com id = 1
UPDATE projetos
SET orcamento = 18000.00
WHERE id = 1;

-- PASSO 6: Deletar projeto com id = 3
DELETE FROM projetos
WHERE id = 3;

-- PASSO 7: Mostrar total de projetos e média dos orçamentos
SELECT 
    COUNT(*) AS total_projetos,
    AVG(orcamento) AS media_orcamento
FROM projetos;

-- PASSO 8: Quantidade de projetos por linguagem
SELECT linguagem, COUNT(*) AS quantidade
FROM projetos
GROUP BY linguagem;

-- PASSO 9: Soma dos orçamentos por linguagem (maior que 20000)
SELECT linguagem, SUM(orcamento) AS total_orcamento
FROM projetos
GROUP BY linguagem
HAVING SUM(orcamento) > 20000.00;

-- PASSO 10: Listar projetos ordenados do maior orçamento para o menor
SELECT nome, orcamento
FROM projetos
ORDER BY orcamento DESC;
