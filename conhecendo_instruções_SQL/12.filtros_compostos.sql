-- Selecionando pedidos mair ou igual a R$200 e status pendente
SELECT *
FROM pedidos

WHERE total_do_pedido >= 200
    AND status = 'Pendente'

-- Selecionando pedidos com status pendente ou processando
SELECT *
FROM pedidos

WHERE status = 'Processando'
    OR status = 'Pendente'

-- Tirando pedidos pendentes
SELECT *
FROM pedidos

WHERE NOT status = 'Pendente'

-- Selecionar pedidos entre datas 
SELECT *
FROM pedidos

WHERE data_de_envio_estimada BETWEEN '2023-08-01'
    AND '2023-09-01'