/*Contexto: Vocês foram contratados como Analistas de Dados da TechMinds, uma startup em rápido
crescimento. O primeiro desafio de vocês é estruturar o banco de dados do RH para gerenciar os
colaboradores, seus departamentos e salários, além de extrair relatórios estratégicos para a diretoria*/

--Exercicio 1 Criar banco de dados

CREATE DATABASE TechMinds;
USE TechMinds;

--Exercicio 2 Criar tabela

CREATE TABLE colaboradores(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100),
    departamento VARCHAR(50),
    salario INT,
    data_contrato DATE);

--exercicio 3 inserir colaboradores
INSERT INTO colaboradores (nome, email, departamento, salario, data_contrato) VALUES
('Ana Silva', 'ana.silva@techminds.com', 'marketing', 4500, '2023-01-15'),
('Bruno Costa', 'bruno.c@techminds.com', 'desenvolvimento', 7200, '2023-03-20'),
('Carla Souza', 'carla.s@techminds.com', 'vendas', 3800, '2023-05-10'),
('Diego Martins', 'diego.m@techminds.com', 'desenvolvimento', 8100, '2023-06-01'),
('Roberto dias', 'roberto.r@techminds.com', 'marketing', 4900, '2023-08-12'),
('Mariana souza', 'Mari.l@techminds.com', 'vendas', 4100, '2023-11-25');

--Exercicio 4 ver quem ganha mais de 6000
SELECT nome,email
FROM colaboradores
WHERE salario > 6000;

--Exercicio 5 Robertão ganhou aumento
UPDATE colaboradores
SET salario=6000
WHERE id=5;

--Exercicio 6 Mariana foi demitida
DELETE FROM colaboradores
WHERE id = 6;

--Exercicio 7 Quantidade de funcionarios e média salarial
COUNT(*) AS total_colaboradores,
    AVG(salario) AS media_salario
 FROM colaboradores;

 -- Exercicio 8 Descobrir quantidade de colaboradores em cada setor
 SELECT 
    departamento, 
    COUNT(*) AS quantidade_colaboradores
FROM colaboradores
GROUP BY departamento;

--Exercicio 9 Maior e menor salário em cada departamento
SELECT 
    departamento, 
    MAX(salario) AS maior_salario, 
    MIN(salario) AS menor_salario
FROM colaboradores
GROUP BY departamento;

-- Exercicio 10 CONSULTA AVANÇADA
SELECT 
    departamento, 
    SUM(salario) AS custo_total_folha
FROM colaboradores
WHERE data_contrato <= '2023-12-31'
GROUP BY departamento
HAVING SUM(salario) > 10000;