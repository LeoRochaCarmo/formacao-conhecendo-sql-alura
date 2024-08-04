-- Criar uma tabela chamada projetos com as colunas: 
-- id_projeto (int, chave primária), nome_projeto (varchar(100)),
-- id_gerente (int, referência a id na tabela funcionarios). 
CREATE TABLE projetos(
    id_projeto INT PRIMARY KEY,
    nome_projeto VARCHAR(100),
    id_gerente INT,
    FOREIGN KEY(id_gerente) REFERENCES funcionarios(id)
)

-- Inserir 3 registros
INSERT INTO projetos(
    id_projeto,
    nome_projeto,
    id_gerente
)
VALUES
    (1, 'brabo', 3),
    (2, 'bruto', 4),
    (3, 'brilhante', 5)

-- Selecionar todos os projetos cujo id_gerente seja igual a 5
SELECT *
FROM projetos

WHERE id_gerente = 5