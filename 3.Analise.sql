USE AnaliseVendas;
GO

-- An�lises Descritivas

SELECT 1 AS ID, 'Tamanho da Base de Clientes' AS Descri��o;
SELECT COUNT(*) AS Total_Clientes
FROM Clientes;

SELECT 2 AS ID, 'Tamanho da Base de Lojas' AS Descri��o;
SELECT COUNT(*) AS Total_Lojas
FROM Lojas;

SELECT 3 AS ID, 'Produto com Maior Estoque' AS Descri��o;
SELECT nome_produto, estoque_produto
FROM Produtos
ORDER BY estoque_produto DESC


SELECT 4 AS ID, 'Receita Total de Vendas' AS Descri��o;
SELECT SUM(valor_total) AS Receita_Total
FROM Vendas;

SELECT 5 AS ID, 'Receita Total de Vendas Online' AS Descri��o;
SELECT SUM(valor_total) AS Receita_Total_Online
FROM VendasOnline;

SELECT 6 AS ID, 'N�mero Total de Vendas por Estado' AS Descri��o;
SELECT estado_cliente, COUNT(*) AS Total_Vendas, SUM(V.valor_total) AS VALOR_TOTAL
FROM Vendas V
JOIN Clientes C ON V.id_cliente = C.id_cliente
GROUP BY estado_cliente;

SELECT 7 AS ID, 'Produtos com Estoque Abaixo de 10 Unidades' AS Descri��o;
SELECT nome_produto, estoque_produto
FROM Produtos
WHERE estoque_produto < 10;

SELECT 8 AS ID, 'M�dia de Pre�o dos Produtos por Categoria' AS Descri��o;
SELECT categoria_produto, AVG(preco_produto) AS Media_Preco
FROM Produtos
GROUP BY categoria_produto;

SELECT 9 AS ID, 'Total de Vendas por Loja' AS Descri��o;
SELECT L.nome_loja, SUM(V.valor_total) AS Total_Vendas
FROM Vendas V
JOIN Lojas L ON V.id_loja = L.id_loja
GROUP BY L.nome_loja;

SELECT 10 AS ID, 'Total de Vendas Online por Plataforma' AS Descri��o;
SELECT plataforma, SUM(valor_total) AS Total_Vendas_Online
FROM VendasOnline
GROUP BY plataforma;


-- An�lises Estat�sticas

SELECT 1 AS ID, 'M�dia de Quantidade Vendida por Venda' AS Descri��o;
SELECT AVG(quantidade_vendida) AS Media_Quantidade
FROM Vendas;

SELECT 2 AS ID, 'Desvio Padr�o do Pre�o dos Produtos' AS Descri��o;
SELECT STDEV(preco_produto) AS Desvio_Padrao_Preco
FROM Produtos;

SELECT 3 AS ID, 'Soma do Estoque de Produtos por Categoria' AS Descri��o;
SELECT categoria_produto, SUM(estoque_produto) AS Estoque_Total
FROM Produtos
GROUP BY categoria_produto;

SELECT 4 AS ID, 'M�dia de Pre�o dos Produtos Vendidos' AS Descri��o;
SELECT AVG(P.preco_produto) AS Media_Preco
FROM Vendas V
JOIN Produtos P ON V.id_produto = P.id_produto;

SELECT 5 AS ID, 'Correla��o Entre Pre�o e Quantidade Vendida' AS Descri��o;
WITH ProdutoVenda AS (
    SELECT 
        P.preco_produto,
        V.quantidade_vendida
    FROM Produtos P
    JOIN Vendas V ON P.id_produto = V.id_produto
)
, Estatisticas AS (
    SELECT
        AVG(preco_produto) AS media_preco,
        AVG(quantidade_vendida) AS media_quantidade
    FROM ProdutoVenda
)
, Componentes AS (
    SELECT
        PV.preco_produto,
        PV.quantidade_vendida,
        (PV.preco_produto - E.media_preco) * (PV.quantidade_vendida - E.media_quantidade) AS covariancia,
        POWER(PV.preco_produto - E.media_preco, 2) AS variancia_preco,
        POWER(PV.quantidade_vendida - E.media_quantidade, 2) AS variancia_quantidade
    FROM ProdutoVenda PV
    CROSS JOIN Estatisticas E
)
SELECT SUM(covariancia) / (SQRT(SUM(variancia_preco)) * SQRT(SUM(variancia_quantidade))) AS correlacao
FROM Componentes;


