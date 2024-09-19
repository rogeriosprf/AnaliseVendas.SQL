USE AnaliseVendas;
GO

IF OBJECT_ID('spDesempenhoProdutos', 'P') IS NOT NULL
    DROP PROCEDURE spDesempenhoProdutos;
GO

CREATE PROCEDURE spDesempenhoProdutos
    @DataInicio DATE,
    @DataFim DATE,
    @id_produto INT = NULL -- Parâmetro opcional
AS
BEGIN
    -- Definindo a CTE para calcular o desempenho das vendas
    WITH Geral AS (
        SELECT
            id_produto,
            CASE WHEN id_loja IS NOT NULL THEN SUM(valor_total) ELSE 0 END AS 'física',
            CASE WHEN id_loja IS NULL THEN SUM(valor_total) ELSE 0 END AS 'online'
        FROM
            Vendas
        WHERE
            data_venda BETWEEN @DataInicio AND @DataFim
            AND (@id_produto IS NULL OR id_produto = @id_produto)
        GROUP BY
            id_produto, id_loja
    )

    -- Selecionando os dados agregados
    SELECT
        P.nome_produto	AS 'Produto',
        SUM(física)		AS 'Física',
        SUM(online)		AS 'Online'
    FROM
			Geral G
	JOIN	Produtos P on G.id_produto = P.id_produto
    GROUP BY
			P.nome_produto
    ORDER BY
			P.nome_produto;
END;
GO

exec spDesempenhoProdutos '2018-01-01','2020-01-01',45
exec spDesempenhoProdutos '2018-01-01','2020-01-01'