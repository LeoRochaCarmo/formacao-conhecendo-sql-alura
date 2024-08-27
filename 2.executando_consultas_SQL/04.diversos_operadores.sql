-- Buscar 2 cursos específicos da tabela de treinamento
SELECT *
FROM treinamento

WHERE (Curso LIKE 'O direito%' AND Instituicao = 'da Rocha')
    OR (Curso LIKE 'O conforto%' AND Instituicao = 'das Neves')
