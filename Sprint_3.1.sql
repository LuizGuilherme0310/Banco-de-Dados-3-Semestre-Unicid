--exercicio 1 criar banco
CREATE DATABASE mega_store;
USE mega_store;
--exercicio 2 criar tabela
CREATE TABLE produtos (
  Id INT primary key AUTO_INCREMENT,
  nome VARCHAR(100),
  categoria VARCHAR(50),
  preço INT,
  qntd_estoque INT,
  data_cadastro DATE);
  --exercicio 3 inserir dados
INSERT INTO produtos (nome, categoria, preço, qntd_estoque, data_cadastro) VALUES
('Smartphone X10', 'Eletronicos', 2500, 15, '2024-01-10'),
('Cadeira Gamer RGB Pro', 'moveis', 1200, 8, '2024-01-12'),
('Mouse Pad Extra Large', 'acessorios', 80, 50, '2024-01-15'),
('Monitor UltraWide 29', 'Eletronicos', 1500, 10, '2024-01-18'),
('Mesa de Escritório L', 'moveis', 450, 5, '2024-01-20');
--exercicio 4 filtrar preços
SELECT nome, preço
FROM produtos
WHERE preço > 1000;
--exercicio 5 atualizar dados
UPDATE produtos
SET preço = 1350
WHERE id = 2;
--exercicio 6 deletar dados
DELETE FROM produtos
WHERE id = 5;
-- exercicio 7 media de preço
COUNT(*) AS total_produtos, 
    AVG(preço) AS media_preço 
FROM produtos;
-- exercio 8 produto mais caro e mais barato
SELECT 
    categoria, 
    MAX(preço) AS produto_mais_caro, 
    MIN(preço) AS produto_mais_barato
FROM produtos
GROUP BY categoria;
--exercicio 9 listar categorias e quantidade de itens
SELECT 
    categoria, 
    SUM(qntd_estoque) AS total_estoque
FROM produtos
GROUP BY categoria
HAVING SUM(qntd_estoque) > 30;
-- exercicio 10 consulta definitiva
SELECT 
    categoria, 
    SUM(qntd_estoque) AS total_estoque_2023
FROM produtos
WHERE data_cadastro BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY categoria
HAVING SUM(qntd_estoque) < 60;
