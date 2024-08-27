-- Criar uma tabela chamada funcionarios com as seguintes colunas: 
-- id (int, chave primária), nome (varchar(100)), 
-- departamento (varchar(100)) e salario (float)
CREATE TABLE funcionarios(
    id INT PRIMARY KEY,
    nome varchar(100), 
    departamento varchar(100),
    salario float
    )

-- inserindo os dados
INSERT INTO funcionarios(
    id,
    nome,
    departamento,
    salario
    )
VALUES
    (1, 'Heitor Vieira', 'Financeiro', 4959.22),
    (2, 'Daniel Campos', 'Vendas', 3884.44),
    (3, 'Luiza Dias', 'TI', 8205.78),
    (4, 'Davi Lucas Moraes', 'Financeiro', 8437.02),
    (5, 'Pietro Cavalcanti', 'TI', 4946.88),
    (6, 'Evelyn da Mata', 'Vendas', 5278.88),
    (7, 'Isabella Rocha', 'Marketing', 4006.03),
    (8, 'Sra. Manuela Azevedo', 'Vendas', 6101.88),
    (9, 'Brenda Cardoso', 'TI', 8853.34),
    (10, 'Danilo Souza', 'TI', 8242.14)
