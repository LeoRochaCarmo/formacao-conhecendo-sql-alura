CREATE TABLE clientes(
    id_cliente INT PRIMARY KEY, 
    nome_cliente VARCHAR(250),
    info_contato VARCHAR(250)
    )

-- adicionar colunas na tabela
ALTER TABLE clientes ADD endereco_cliente VARCHAR(250)

-- excluir toda tabela
DROP TABLE clientes

SELECT *
FROM clientes

