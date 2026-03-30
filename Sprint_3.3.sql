--criar banco--
CREATE DATABASE techforge;
USE techforge;

--criar tabela--
CREATE TABLE projetos(
id PRIMARY KEY AUTO_INCREMENT,
nome_projeto VARCHAR(100),
linguagem VARCHAR(50),
orçamento DECIMAL(12, 2),
data_inicio DATE);

--Inserindo dados--
INSERT INTO projetos (nome_projeto, linguagem, orcamento, data_inicio)
VALUES 
('motor de faisca', 'C++', 150500.75, '2026-04-10'),
('Automação de Relatórios Financeiros', 'Python', 45000.00, '2026-05-15'),
('Otimização de Consultas', 'SQL', 12500.50, '2026-06-01'),
('Engine de Renderização Gráfica', 'C++', 850000.00, '2026-07-20'),
('API de Integração de Dados', 'Python', 32700.25, '2026-08-05');

--buscando dados--
SELECT nome_projeto, orcamento
FROM projetos
WHERE linguagem = 'C++';

--alterar orçamento--
UPDATE projetos
SET orcamento = '18000.00'
WHERE id = 1;

--Apagar dados--
DELETE FROM projetos
WHERE id= 3;

--panorama geral rapido--
SELECT 
    COUNT(*) AS total_projetos_ativos, 
    AVG(orcamento) AS media_orcamentos
FROM Projetos;

-- Agrupamento de dados --
SELECT linguagem, COUNT(*) AS quantidade_projetos
FROM Projetos
GROUP BY linguagem;

-- Filtrando grupos --
SELECT linguagem, SUM(orcamento) AS total_alocado
FROM Projetos
GROUP BY linguagem
HAVING SUM(orcamento) > 20000.00;

-- Ordenação --
SELECT nome_projeto, orcamento
FROM Projetos
ORDER BY orcamento DESC;