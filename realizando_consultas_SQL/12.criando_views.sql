-- Encontrar formas de otimizar essa função (VIEW)
-- VIEW -> Tabela virtual que é criada a partir de uma consulta

-- Imagine que o banco de dados é uma casa cheia de cômodos (tabelas) com vários objetos (dados). 
-- Uma view é como uma janela específica que foi desenhada para permitir que as pessoas de fora vejam 
-- apenas uma parte da casa ou apenas alguns objetos específicos, sem poder entrar ou mexer em nada.

-- VANTAGENS:
--      - Simplificar consultas complexas;
--      - Limitar o acesso a dados sensíveis;
--      - Apresentar uma estrutura de dados personalizada para diferentes usuários.

CREATE VIEW view_valor_pedido AS

SELECT
    t1.id,
    t3.nome AS cliente,
    t1.datahorapedido,
    SUM(t2.precounitario) AS valor_pedido
FROM pedidos AS t1

INNER JOIN itenspedidos AS t2
ON t1.id = t2.idpedido

INNER JOIN clientes AS t3
ON t1.idcliente = t3.id

GROUP BY t1.id







