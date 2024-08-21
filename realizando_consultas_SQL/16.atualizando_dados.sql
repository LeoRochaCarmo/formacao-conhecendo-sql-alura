-- SQLite -> Não valida chaves estrangeiras!!!
-- PRAMA -> Validar chaves estrangeiras (só funciona no SQLite)
PRAGMA foreing_keys = ON

-- Atualizando preço do produto de id 31 (UPDATE):
UPDATE produtos SET preco = 13.0
WHERE id = 31

-- Atualizando descrição de um dos croissants (UPDATE):
SELECT *
FROM produtos

WHERE nome LIKE 'croissant%'

UPDATE produtos SET descricao = 'Croissant recheado com amêndoas.'
WHERE nome LIKE 'Croissant de Amêndoa'
