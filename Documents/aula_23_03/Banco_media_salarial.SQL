CREATE DATABASE aula23_03;
USE aula23_03;

CREATE SCHEMA salarios;
CREATE TABLE funcionarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    salario DOUBLE,
    setor VARCHAR(100)
);
INSERT INTO funcionarios (nome, salario, setor) VALUES 
('Ana Silva', 4500.00, 'Marketing'),
('Carlos Souza', 3200.50, 'Vendas'),
('Mariana Oliveira', 7800.00, 'TI'),
('Ricardo Santos', 2900.00, 'Recursos Humanos'),
('Beatriz Costa', 5500.00, 'Financeiro');
INSERT INTO funcionarios (nome, salario, setor) VALUES 
('Julia Mendes', 8200.00, 'TI'),
('Marcos Rocha', 3100.00, 'Vendas'),
('Fernanda Lima', 4200.00, 'Marketing'),
('Paulo Souza', 7500.00, 'TI'),
('Carla Dias', 3400.00, 'Vendas'),
('Roberto Alves', 6000.00, 'Financeiro'),
('Amanda Silva', 2800.00, 'Recursos Humanos');

SELECT setor, ROUND(AVG(salario), 2) AS media_salarial
FROM funcionarios
GROUP BY setor
ORDER BY media_salarial DESC;