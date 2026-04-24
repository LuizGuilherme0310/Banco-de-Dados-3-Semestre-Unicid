-- PASSO 11: Adicionar coluna status na tabela projetos
ALTER TABLE projetos
ADD status VARCHAR(20);

-- PASSO 12: Atualizar todos os projetos para 'Em andamento'
UPDATE projetos
SET status = 'Em andamento';

-- PASSO 13: Criar tabela desenvolvedores com chave estrangeira
CREATE TABLE desenvolvedores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    senioridade VARCHAR(30),
    id_projeto INT,
    FOREIGN KEY (id_projeto) REFERENCES projetos(id)
);

-- PASSO 14: Inserir 4 desenvolvedores vinculados a projetos
INSERT INTO desenvolvedores (nome, senioridade, id_projeto) VALUES
('João Silva', 'Júnior', 1),
('Maria Souza', 'Pleno', 2),
('Carlos Lima', 'Sênior', 4),
('Ana Costa', 'Pleno', 5);

-- PASSO 15: Projetos em Python OU com orçamento maior que 15000
SELECT nome, orcamento
FROM projetos
WHERE linguagem = 'Python' OR orcamento > 15000.00;

-- PASSO 16: Buscar projetos cujo nome começa com 'Sistema'
SELECT *
FROM projetos
WHERE nome LIKE 'Sistema%';

-- PASSO 17: Mostrar desenvolvedor, senioridade e projeto (JOIN)
SELECT d.nome AS desenvolvedor, d.senioridade, p.nome AS projeto
FROM desenvolvedores d
JOIN projetos p ON d.id_projeto = p.id;

-- PASSO 18: Projeto com maior orçamento (subquery)
SELECT nome, orcamento
FROM projetos
WHERE orcamento = (SELECT MAX(orcamento) FROM projetos);

-- PASSO 19: Excluir tabela teste_tabelas
DROP TABLE teste_tabelas;

-- PASSO 20: Quantidade de desenvolvedores por projeto
SELECT p.nome AS projeto, COUNT(d.id) AS total_desenvolvedores
FROM projetos p
LEFT JOIN desenvolvedores d ON p.id = d.id_projeto
GROUP BY p.nome;
