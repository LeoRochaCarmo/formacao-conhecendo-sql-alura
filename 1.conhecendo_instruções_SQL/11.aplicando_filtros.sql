SELECT *
FROM pedidos
-- pedidos maiores ou iguais que R$200
WHERE total_do_pedido >= 200
-- pedidos diferentes de R$200
AND total_do_pedido <> 200

SELECT *
FROM clientes
-- selecionar clientes que têm a inicial do nome da letra C para frente
-- excluindo nomes com as inicias A e B
WHERE nome_cliente > 'C'

SELECT *
FROM pedidos
-- selecionar pedidos que foram feitos depois do dia 19/09
WHERE data_do_pedido >'2023-09-19'