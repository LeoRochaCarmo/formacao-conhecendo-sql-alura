  -- 1. Criando Tabela
CREATE TABLE FaturamentoDiario (
    dia DATE,
    faturamento_total DECIMAL(10,2)
    )

-- 2. Criando Trigger
CREATE TRIGGER CalculaFaturamentoDiario
AFTER INSERT ON itenspedidos
FOR EACH ROW
BEGIN
    DELETE FROM FaturamentoDiario  
    INSERT INTO FaturamentoDiario (dia,faturamento_total)
    SELECT
        DATE(datahorapedido)AS dia,
        SUM(t2.precounitario) AS faturamento_diario
    FROM pedidos AS t1

    INNER JOIN itenspedidos AS t2
    ON t1.id = t2.idpedido

    GROUP BY dia
END


