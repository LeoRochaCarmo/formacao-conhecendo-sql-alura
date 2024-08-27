-- Criando nova tabela usando SELECT
-- Nessa tabela teremos apenas os pedidos que possuem o valor maior ou igual a 400

CREATE TABLE pedidos_gold(
    id_pedido_gold INT PRIMARY KEY,
    data_do_pedido_gold DATE,
    status_gold VARCHAR(50),
    total_do_pedido_gold DECIMAL(10,2),
    cliente_gold INT,
    data_de_envio_estimada_gold DATE,
    FOREIGN KEY(cliente_gold) REFERENCES clientes(id_cliente)
)
