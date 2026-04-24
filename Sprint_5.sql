-- PASSO 1: PREPARAÇÃO DO AMBIENTE --
CREATE TABLE IF NOT EXISTS projetos (
    id_projeto INT PRIMARY KEY AUTO_INCREMENT,
    nome_projeto VARCHAR(100),
    orcamento DECIMAL(15,2),
    linguagem VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS desenvolvedores (
    id_dev INT PRIMARY KEY AUTO_INCREMENT,
    nome_dev VARCHAR(100),
    senioridade VARCHAR(30),
    id_projeto INT,
    FOREIGN KEY (id_projeto) REFERENCES projetos(id_projeto)
);

INSERT INTO projetos (nome_projeto, orcamento, linguagem) VALUES
('Sistema de Vendas', 20000.00, 'Python'),
('Portal Interno', 12000.00, 'PHP'),
('App Mobile', 50000.00, 'Javascript');

INSERT INTO desenvolvedores (nome_dev, senioridade, id_projeto) VALUES
('Alice', 'Sênior', 1), 
('Bob', 'Pleno', 1),
('Charlie', 'Júnior', 2), 
('Davi', 'Sênior', 3);

-- PASSO 2: VIEW DE RELACIONAMENTO (JOIN)--
CREATE OR REPLACE VIEW v_equipes_projetos AS
SELECT 
    d.nome_dev AS desenvolvedor, 
    p.nome_projeto AS projeto
FROM desenvolvedores d
INNER JOIN projetos p ON d.id_projeto = p.id_projeto;

--PASSO 3: VIEW COM AGRUPAMENTO (GROUP BY)--
CREATE OR REPLACE VIEW v_contagem_devs AS
SELECT 
    p.nome_projeto, 
    COUNT(d.id_dev) AS total_desenvolvedores
FROM projetos p
LEFT JOIN desenvolvedores d ON p.id_projeto = d.id_projeto
GROUP BY p.nome_projeto;

---- PASSO 4: VIEW DE PROJETOS PREMIUM (SUBQUERY) --
CREATE OR REPLACE VIEW v_projetos_premium AS
SELECT 
    nome_projeto, 
    orcamento
FROM projetos
WHERE orcamento > (SELECT AVG(orcamento) FROM projetos);

-- PASSO 5: GERENCIAMENTO (DROP VIEW)--
-- Simulando a criação da view do estagiário para poder excluí-la
CREATE OR REPLACE VIEW v_rascunho_financeiro AS SELECT * FROM projetos;

-- O comando solicitado no desafio:--
DROP VIEW IF EXISTS v_rascunho_financeiro;

-- CONSULTAS PARA CONFERÊNCIA -- 
SELECT 'Equipes' AS info, v.* FROM v_equipes_projetos v;
SELECT 'Contagem' AS info, v.* FROM v_contagem_devs v;
SELECT 'Premium' AS info, v.* FROM v_projetos_premium v;
