USE AnaliseVendas;
GO

IF OBJECT_ID('spDesempenhoVendasLojasFisicas', 'P') IS NOT NULL
    DROP PROCEDURE spDesempenhoVendasLojasFisicas;
GO

CREATE PROCEDURE spDesempenhoVendasLojasFisicas
    @DataInicio DATE,
    @DataFim DATE
AS
BEGIN
    SELECT 
        l.id_loja,
        l.nome_loja,
        ISNULL(SUM(v.quantidade_vendida), 0) AS Total_Quantidade_Vendida_Fisica,
        ISNULL(SUM(v.valor_total), 0) AS Valor_Total_Vendas_Fisicas
    FROM 
        Lojas l
    LEFT JOIN 
        Vendas v ON l.id_loja = v.id_loja 
        AND v.data_venda BETWEEN @DataInicio AND @DataFim
        AND v.id_venda_online IS NULL
    GROUP BY 
        l.id_loja, l.nome_loja
    ORDER BY 
        Valor_Total_Vendas_Fisicas DESC;
END;
GO

spDesempenhoVendasLojasFisicas '2018-01-01','2020-01-01'