SELECT DISTINCT cliente,
       status
FROM pedidos

WHERE status = 'Pendente'

ORDER BY cliente ASC


