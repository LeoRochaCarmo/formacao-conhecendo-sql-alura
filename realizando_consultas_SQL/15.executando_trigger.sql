

SELECT *
FROM pedidos

INSERT INTO pedidos(ID, IDCliente, DataHoraPedido, Status)
VALUES (456, 27, '2023-10-17 14:30:00', 'Em Andamento')

INSERT INTO itenspedidos(idpedido, idproduto, quantidade, precounitario)
VALUES
    (456, 14, 1, 6)

INSERT INTO Pedidos (ID, IDCliente, DataHoraPedido, Status) 
VALUES (455, 28, '2023-10-09 14:35:00', 'Em Andamento');

INSERT INTO ItensPedidos (IDPedido, IDProduto, Quantidade, PrecoUnitario) 
VALUES 
    (455, 10, 1, 15.0),
    (455, 31, 1, 12.50)

SELECT *
FROM FaturamentoDiario