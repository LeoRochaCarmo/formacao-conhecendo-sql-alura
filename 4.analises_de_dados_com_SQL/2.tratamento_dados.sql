-- Criando view para retornar uma tabela indicando quais produtos estão com preços aceitáveis ou não.
-- Produto	        Preço Mínimo	Preço Máximo
-- Bola de Futebol	    20	            100
-- Chocolate	        10	            50
-- Celular	            80	            5000
-- Livro de Ficção	    10	            200
-- Camisa	            80	            200

CREATE VIEW view_verificacao_preco AS

SELECT
    id_produto,
    nome_produto,
    preco,
    CASE
        WHEN 
            (nome_produto = 'Bola de Futebol' 
                AND (preco >= 20 AND preco <=100))
            OR 
            (nome_produto = 'Chocolate' 
                AND (preco >= 10 AND preco <=50))
            OR
            (nome_produto = 'Celular' 
                AND (preco >= 80 AND preco <=5000))
            OR
            (nome_produto = 'Livro de Ficção' 
                AND (preco >= 10 AND preco <=200))
            OR
            (nome_produto = 'Camisa' 
                AND (preco >= 80 AND preco <=200))
            THEN 'preço aceitável'
            ELSE 'preço não aceitável'
    END AS verificacao_preco
FROM produtos

-- Visualizando View

SELECT *
FROM view_verificacao_preco

-- Atualizando preços não aceitáveis
-- Utilizando a função RANDOM() para gerar números aleatórios dentro
-- dos preços aceitáveis (apenas para fins didáticos)

BEGIN TRANSACTION;

UPDATE produtos
SET preco = ABS(RANDOM()) % 81 + 20
WHERE nome_produto = 'Bola de Futebol' 
    AND id_produto IN (
        SELECT
            id_produto
        FROM view_verificacao_preco
        WHERE verificacao_preco = 'preço não aceitável'
    ); 

UPDATE produtos
SET preco = ABS(RANDOM()) % 41 + 10
WHERE nome_produto = 'Chocolate' 
    AND id_produto IN (
        SELECT
            id_produto
        FROM view_verificacao_preco
        WHERE verificacao_preco = 'preço não aceitável'
    );

UPDATE produtos
SET preco = ABS(RANDOM()) % 4921 + 80
WHERE nome_produto = 'Celular' 
    AND id_produto IN (
        SELECT
            id_produto
        FROM view_verificacao_preco
        WHERE verificacao_preco = 'preço não aceitável'
    ); 

UPDATE produtos
SET preco = ABS(RANDOM()) % 191 + 10
WHERE nome_produto = 'Livro de Ficção' 
    AND id_produto IN (
        SELECT
            id_produto
        FROM view_verificacao_preco
        WHERE verificacao_preco = 'preço não aceitável'
    ); 

UPDATE produtos
SET preco = ABS(RANDOM()) % 121 + 80
WHERE nome_produto = 'Camisa' 
    AND id_produto IN (
        SELECT
            id_produto
        FROM view_verificacao_preco
        WHERE verificacao_preco = 'preço não aceitável'
    );

COMMIT;