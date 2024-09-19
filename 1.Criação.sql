CREATE DATABASE AnaliseVendas
GO

USE AnaliseVendas
GO

-- Criação da tabela Lojas
CREATE TABLE Lojas (
    id_loja INT IDENTITY(1,1) PRIMARY KEY,
    nome_loja NVARCHAR(100) NOT NULL,
    endereco_loja NVARCHAR(200),
    cidade_loja NVARCHAR(100),
    estado_loja NVARCHAR(50),
    cep_loja NVARCHAR(10),
    data_abertura DATE
);

-- Criação da tabela Clientes
CREATE TABLE Clientes (
    id_cliente INT IDENTITY(1,1) PRIMARY KEY,
    nome_cliente NVARCHAR(100) NOT NULL,
    email_cliente NVARCHAR(100) NOT NULL,
    telefone_cliente NVARCHAR(20),
    endereco_cliente NVARCHAR(200),
    cidade_cliente NVARCHAR(100),
    estado_cliente NVARCHAR(50),
    data_cadastro DATE
);

-- Criação da tabela Produtos
CREATE TABLE Produtos (
    id_produto INT IDENTITY(1,1) PRIMARY KEY,
    nome_produto NVARCHAR(100) NOT NULL,
    categoria_produto NVARCHAR(50),
    preco_produto DECIMAL(10, 2) NOT NULL,
    estoque_produto INT NOT NULL CHECK (estoque_produto >= 0)
);

-- Criação da tabela VendasOnline
CREATE TABLE VendasOnline (
    id_venda_online INT IDENTITY(1,1) PRIMARY KEY,
    id_cliente INT NOT NULL,
    plataforma NVARCHAR(100) NOT NULL,
    data_venda_online DATE NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,

    -- Definindo as chaves estrangeiras
    CONSTRAINT fk_cliente_online FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);


-- Criação da tabela Vendas
CREATE TABLE Vendas (
    id_venda INT IDENTITY(1,1) PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_produto INT NOT NULL,
    id_loja INT, -- Alterado para permitir NULL para vendas online
    id_venda_online INT, -- Novo campo para associar com vendas online, NULL se não aplicável
    quantidade_vendida INT NOT NULL CHECK (quantidade_vendida > 0),
    data_venda DATE NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,

    -- Definindo as chaves estrangeiras
    CONSTRAINT fk_cliente FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente),
    CONSTRAINT fk_produto FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto),
    CONSTRAINT fk_loja FOREIGN KEY (id_loja) REFERENCES Lojas(id_loja), -- Chave estrangeira opcional
    CONSTRAINT fk_venda_online FOREIGN KEY (id_venda_online) REFERENCES VendasOnline(id_venda_online) -- Nova chave estrangeira opcional
);

CREATE TABLE VariacaoPrecos (
	id_produto INT, 
	preco DECIMAL(10,2), 
	data_variacao DATE
	
	CONSTRAINT fk_variacao_preco_produto FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)

);