USE AnaliseVendas;
GO

IF OBJECT_ID('spDesempenhoVendasClientes', 'P') IS NOT NULL
    DROP PROCEDURE spDesempenhoVendasClientes;
GO

CREATE PROCEDURE spDesempenhoVendasClientes
    @DataInicio DATE,
    @DataFim DATE,
    @id_cliente INT = NULL -- Opcional
AS
BEGIN    
    WITH Desempenho AS (
        SELECT	 id_cliente,
				 SUM(valor_total) AS Total
        FROM	 Vendas
        WHERE	 data_venda BETWEEN @DataInicio AND @DataFim
            AND  (@id_cliente IS NULL OR id_cliente = @id_cliente)
        GROUP BY id_cliente
    )
    SELECT		 C.nome_cliente		AS 'Cliente',
				 ISNULL(D.Total, 0) AS 'Total'
    FROM         Desempenho D 
		    JOIN Clientes C ON C.id_cliente = D.id_cliente
    ORDER BY	 C.nome_cliente;
END;
GO

exec spDesempenhoVendasClientes '2018-01-01', '2020-01-01', 12
exec spDesempenhoVendasClientes '2018-01-01', '2020-01-01'
