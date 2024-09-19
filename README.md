
Este projeto é um sistema de análise de dados para um banco de dados de vendas, clientes, produtos e lojas. O objetivo é realizar análises descritivas e estatísticas para entender melhor o comportamento de vendas, a performance de produtos e clientes, e as características das lojas.

O banco de dados inclui as seguintes tabelas:

Lojas: Armazena informações sobre as lojas.
Clientes: Armazena informações sobre os clientes.
Produtos: Armazena informações sobre os produtos.
VendasOnline: Armazena informações sobre as vendas realizadas online.
Vendas: Armazena informações sobre as vendas realizadas nas lojas físicas e online.
VariacaoPrecos: Armazena informações sobre as variações de preços dos produtos.


Estrutura do Banco de Dados
As tabelas são definidas como segue:

Lojas: id_loja, nome_loja, endereco_loja, cidade_loja, estado_loja, cep_loja, data_abertura
Clientes: id_cliente, nome_cliente, email_cliente, telefone_cliente, endereco_cliente, cidade_cliente, estado_cliente, data_cadastro
Produtos: id_produto, nome_produto, categoria_produto, preco_produto, estoque_produto
VendasOnline: id_venda_online, id_cliente, plataforma, data_venda_online, valor_total
Vendas: id_venda, id_cliente, id_produto, id_loja, id_venda_online, quantidade_vendida, data_venda, valor_total
VariacaoPrecos: id_produto, preco, data_variacao
