-- alterar dados da tabela de pedido
-- status processando modificado para enviado
-- UPDATE + WHERE

UPDATE pedidos SET status = 'Enviado'

WHERE status = 'Processando'

-- Mudar email e endereço do cliente de id = 2
UPDATE clientes SET 
    info_contato = 'j.santos@email.com',
    endereco_cliente = 'Rua deise, 30'

WHERE id_cliente = 2



