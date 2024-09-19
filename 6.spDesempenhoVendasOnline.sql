USE AnaliseVendas
GO

IF OBJECT_ID('spDesempenhoVendasOnline', 'P') IS NOT NULL
    DROP PROCEDURE spDesempenhoVendasOnline;
GO

CREATE PROCEDURE spDesempenhoVendasOnline
    @DataInicio DATE,
    @DataFim	DATE
AS
BEGIN
    SELECT		vo.plataforma,
				ISNULL(COUNT(v.id_venda), 0) AS Quantidade,
				ISNULL(SUM(vo.valor_total), 0) AS Total
    FROM 
        VendasOnline vo
    LEFT JOIN 
        Vendas v ON vo.id_venda_online = v.id_venda_online
        AND v.data_venda BETWEEN @DataInicio AND @DataFim
    WHERE 
        vo.data_venda_online BETWEEN @DataInicio AND @DataFim
    GROUP BY 
        vo.plataforma
    ORDER BY 
        Total DESC;
END;
GO

exec spDesempenhoVendasOnline '2018-01-01', '2020-01-01'