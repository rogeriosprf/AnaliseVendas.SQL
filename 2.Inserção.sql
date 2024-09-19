USE AnaliseVendas
GO

-- Inserção de 8 lojas fictícias
INSERT INTO Lojas (nome_loja, endereco_loja, cidade_loja, estado_loja) VALUES
('Loja Central', 'Avenida Principal, 123', 'São Paulo', 'SP'),
('Loja Norte', 'Rua das Flores, 456', 'São Paulo', 'SP'),
('Loja Sul', 'Avenida das Américas, 789', 'São Paulo', 'SP'),
('Loja Leste', 'Rua do Comércio, 101', 'São Paulo', 'SP'),
('Loja Oeste', 'Rua do Bosque, 202', 'São Paulo', 'SP'),
('Loja Zona Sul', 'Rua dos Pardais, 303', 'Rio de Janeiro', 'RJ'),
('Loja Zona Norte', 'Avenida Atlântica, 404', 'Rio de Janeiro', 'RJ'),
('Loja Barra', 'Avenida Barra, 505', 'Rio de Janeiro', 'RJ');


INSERT INTO Produtos (nome_produto, categoria_produto, preco_produto, estoque_produto) VALUES

-- Eletrônicos
('iPhone 14', 'Eletrônicos', 7999.00, 25),
('Samsung Galaxy S23', 'Eletrônicos', 6999.00, 30),
('MacBook Pro', 'Eletrônicos', 12999.00, 15),
('Dell XPS 13', 'Eletrônicos', 10999.00, 20),
('Sony WH-1000XM4 Headphones', 'Eletrônicos', 1599.00, 50),
('Apple Watch Series 8', 'Eletrônicos', 3299.00, 35),
('Google Pixel 7', 'Eletrônicos', 4999.00, 40),
('Amazon Echo Dot', 'Eletrônicos', 349.00, 80),
('Samsung Smart TV 55"', 'Eletrônicos', 4499.00, 22),
('PlayStation 5', 'Eletrônicos', 4999.00, 15),

-- Eletrodomésticos
('Geladeira Brastemp Frost Free', 'Eletrodomésticos', 4999.00, 12),
('Micro-ondas Panasonic', 'Eletrodomésticos', 599.00, 25),
('Máquina de Lavar Samsung', 'Eletrodomésticos', 2799.00, 18),
('Fogão Electrolux 5 bocas', 'Eletrodomésticos', 2399.00, 10),
('Ar Condicionado Split LG 12.000 BTUs', 'Eletrodomésticos', 2199.00, 8),
('Aspirador de Pó Philco', 'Eletrodomésticos', 399.00, 45),
('Cafeteira Nespresso', 'Eletrodomésticos', 499.00, 30),
('Liquidificador Oster', 'Eletrodomésticos', 199.00, 50),
('Fritadeira Airfryer Philips', 'Eletrodomésticos', 999.00, 25),
('Secadora de Roupas Electrolux', 'Eletrodomésticos', 2399.00, 12),

-- Móveis
('Sofá 3 Lugares', 'Móveis', 2999.00, 10),
('Cama Box Casal', 'Móveis', 1599.00, 15),
('Mesa de Jantar com 6 Cadeiras', 'Móveis', 2199.00, 8),
('Poltrona Reclinável', 'Móveis', 899.00, 20),
('Guarda-Roupa 6 Portas', 'Móveis', 1999.00, 12),
('Escrivaninha Home Office', 'Móveis', 499.00, 35),
('Estante para Livros', 'Móveis', 699.00, 30),
('Cadeira Gamer', 'Móveis', 1099.00, 40),
('Rack para TV', 'Móveis', 499.00, 25),
('Colchão Ortobom Casal', 'Móveis', 799.00, 18),

-- Beleza e Saúde
('Secador de Cabelo Gama Italy', 'Beleza e Saúde', 249.00, 60),
('Chapinha Taiff', 'Beleza e Saúde', 199.00, 50),
('Aparador de Pelos Philips', 'Beleza e Saúde', 149.00, 40),
('Escova Rotativa Mondial', 'Beleza e Saúde', 129.00, 55),
('Barbeador Elétrico Philips', 'Beleza e Saúde', 299.00, 35),
('Massageador Elétrico Relaxmedic', 'Beleza e Saúde', 199.00, 45),
('Balança Digital Omron', 'Beleza e Saúde', 149.00, 38),
('Difusor de Aromas', 'Beleza e Saúde', 99.00, 60),
('Modelador de Cachos Babyliss', 'Beleza e Saúde', 299.00, 28),
('Depilador Elétrico Philips Satinelle', 'Beleza e Saúde', 199.00, 25),

-- Esportes
('Bicicleta Caloi Aro 29', 'Esportes', 1999.00, 10),
('Esteira Elétrica Kikos', 'Esportes', 3599.00, 8),
('Halteres 10kg', 'Esportes', 199.00, 50),
('Corda de Pular', 'Esportes', 39.00, 100),
('Colchonete para Yoga', 'Esportes', 79.00, 80),
('Patins In Line', 'Esportes', 399.00, 25),
('Skate Profissional', 'Esportes', 499.00, 15),
('Bola de Futebol Adidas', 'Esportes', 199.00, 45),
('Tênis de Corrida Asics', 'Esportes', 499.00, 30),
('Luvas de Boxe Everlast', 'Esportes', 299.00, 20),

-- Livros
('1984 - George Orwell', 'Livros', 39.90, 100),
('Sapiens - Yuval Noah Harari', 'Livros', 59.90, 80),
('O Senhor dos Anéis - J.R.R. Tolkien', 'Livros', 129.90, 50),
('A Revolução dos Bichos - George Orwell', 'Livros', 29.90, 120),
('Harry Potter e a Pedra Filosofal - J.K. Rowling', 'Livros', 49.90, 100),
('O Código Da Vinci - Dan Brown', 'Livros', 49.90, 70),
('Dom Quixote - Miguel de Cervantes', 'Livros', 59.90, 60),
('A Guerra dos Tronos - George R.R. Martin', 'Livros', 89.90, 40),
('O Alquimista - Paulo Coelho', 'Livros', 39.90, 110),
('As Crônicas de Nárnia - C.S. Lewis', 'Livros', 69.90, 90),

-- Brinquedos
('LEGO City', 'Brinquedos', 299.00, 40),
('Boneca Barbie', 'Brinquedos', 149.00, 60),
('Carrinho Hot Wheels', 'Brinquedos', 19.00, 120),
('Jogo de Tabuleiro War', 'Brinquedos', 99.00, 30),
('Pelúcia Ursinho', 'Brinquedos', 59.00, 80),
('Boneco Funko Pop', 'Brinquedos', 89.00, 50),
('Patinete Infantil', 'Brinquedos', 199.00, 25),
('Quebra-Cabeça 1000 Peças', 'Brinquedos', 49.00, 70),
('Jogo de Cartas Uno', 'Brinquedos', 29.00, 90),
('Super Soaker Nerf', 'Brinquedos', 149.00, 40),

-- Ferramentas
('Furadeira Bosch', 'Ferramentas', 399.00, 30),
('Parafusadeira Makita', 'Ferramentas', 299.00, 25),
('Serra Circular DeWalt', 'Ferramentas', 599.00, 15),
('Alicate Universal Tramontina', 'Ferramentas', 49.00, 100),
('Chave de Fenda Stanley', 'Ferramentas', 29.00, 120),
('Martelo Vonder', 'Ferramentas', 39.00, 80),
('Trena 5m Stanley', 'Ferramentas', 59.00, 90),
('Jogo de Chaves Allen', 'Ferramentas', 79.00, 50),
('Serrote Tramontina', 'Ferramentas', 49.00, 45),
('Nível Laser Bosch', 'Ferramentas', 499.00, 20);


INSERT INTO Clientes (nome_cliente, email_cliente, telefone_cliente, cidade_cliente, estado_cliente, data_cadastro) VALUES
('João Silva', 'joao.silva@gmail.com', '11987654321', 'São Paulo', 'SP', '2022-01-10'),
('Maria Oliveira', 'maria.oliveira@gmail.com', '21987654321', 'Rio de Janeiro', 'RJ', '2022-02-12'),
('Pedro Santos', 'pedro.santos@gmail.com', '31987654321', 'Belo Horizonte', 'MG', '2022-03-15'),
('Ana Costa', 'ana.costa@gmail.com', '41987654321', 'Curitiba', 'PR', '2022-04-20'),
('Lucas Pereira', 'lucas.pereira@gmail.com', '51987654321', 'Porto Alegre', 'RS', '2022-05-11'),
('Fernanda Lima', 'fernanda.lima@gmail.com', '61987654321', 'Brasília', 'DF', '2022-06-05'),
('Carlos Alves', 'carlos.alves@gmail.com', '71987654321', 'Fortaleza', 'CE', '2022-07-07'),
('Juliana Souza', 'juliana.souza@gmail.com', '81987654321', 'Salvador', 'BA', '2022-08-09'),
('Guilherme Ferreira', 'guilherme.ferreira@gmail.com', '91987654321', 'Florianópolis', 'SC', '2022-09-13'),
('Beatriz Martins', 'beatriz.martins@gmail.com', '11987654322', 'São Paulo', 'SP', '2022-10-15'),

('Bruno Rocha', 'bruno.rocha@gmail.com', '21987654322', 'Niterói', 'RJ', '2022-11-18'),
('Carolina Ribeiro', 'carolina.ribeiro@gmail.com', '31987654322', 'Uberlândia', 'MG', '2022-12-20'),
('Rafael Mendes', 'rafael.mendes@gmail.com', '41987654322', 'Foz do Iguaçu', 'PR', '2022-12-22'),
('Mariana Carvalho', 'mariana.carvalho@gmail.com', '51987654322', 'Caxias do Sul', 'RS', '2023-01-05'),
('Eduardo Batista', 'eduardo.batista@gmail.com', '61987654322', 'Anápolis', 'GO', '2023-02-09'),
('Camila Gomes', 'camila.gomes@gmail.com', '71987654322', 'Recife', 'PE', '2023-03-13'),
('Thiago Araujo', 'thiago.araujo@gmail.com', '81987654322', 'João Pessoa', 'PB', '2023-04-17'),
('Patrícia Dias', 'patricia.dias@gmail.com', '91987654322', 'Maceió', 'AL', '2023-05-21'),
('Leonardo Moreira', 'leonardo.moreira@gmail.com', '11987654323', 'Natal', 'RN', '2023-06-25'),
('Larissa Teixeira', 'larissa.teixeira@gmail.com', '21987654323', 'São Luís', 'MA', '2023-07-28'),

('Rodrigo Fernandes', 'rodrigo.fernandes@gmail.com', '31987654323', 'Ribeirão Preto', 'SP', '2023-08-01'),
('Sabrina Lima', 'sabrina.lima@gmail.com', '41987654323', 'Campinas', 'SP', '2023-08-14'),
('Fábio Silva', 'fabio.silva@gmail.com', '51987654323', 'São Bernardo do Campo', 'SP', '2023-09-06'),
('Paula Barros', 'paula.barros@gmail.com', '61987654323', 'Cuiabá', 'MT', '2023-09-12'),
('Daniel Almeida', 'daniel.almeida@gmail.com', '71987654323', 'Campo Grande', 'MS', '2023-09-23'),
('Isabela Nunes', 'isabela.nunes@gmail.com', '81987654323', 'Manaus', 'AM', '2023-10-03'),
('Vinícius Correia', 'vinicius.correia@gmail.com', '91987654323', 'Belém', 'PA', '2023-10-07'),
('Clara Melo', 'clara.melo@gmail.com', '11987654324', 'Santos', 'SP', '2023-10-19'),
('Ricardo Borges', 'ricardo.borges@gmail.com', '21987654324', 'Sorocaba', 'SP', '2023-10-25'),
('Alice Reis', 'alice.reis@gmail.com', '31987654324', 'Volta Redonda', 'RJ', '2023-10-28'),

('Felipe Castro', 'felipe.castro@gmail.com', '41987654324', 'Vitória', 'ES', '2023-11-01'),
('Vanessa Campos', 'vanessa.campos@gmail.com', '51987654324', 'Aracaju', 'SE', '2023-11-04'),
('Diego Vieira', 'diego.vieira@gmail.com', '61987654324', 'Joinville', 'SC', '2023-11-09'),
('Letícia Pires', 'leticia.pires@gmail.com', '71987654324', 'Pelotas', 'RS', '2023-11-12'),
('André Rocha', 'andre.rocha@gmail.com', '81987654324', 'Maringá', 'PR', '2023-11-16'),
('Roberta Cunha', 'roberta.cunha@gmail.com', '91987654324', 'Londrina', 'PR', '2023-11-19'),
('Bruna Lopes', 'bruna.lopes@gmail.com', '11987654325', 'Macapá', 'AP', '2023-11-24'),
('Alexandre Faria', 'alexandre.faria@gmail.com', '21987654325', 'Boa Vista', 'RR', '2023-11-27'),
('Helena Rocha', 'helena.rocha@gmail.com', '31987654325', 'Porto Velho', 'RO', '2023-12-01'),
('Marcelo Lima', 'marcelo.lima@gmail.com', '41987654325', 'Palmas', 'TO', '2023-12-05');


-- Configuração inicial
DECLARE @i INT = 1;
DECLARE @totalRegistros INT = 1000;
DECLARE @id_cliente INT;
DECLARE @data_venda_online DATE;
DECLARE @valor_total DECIMAL(10, 2);
DECLARE @plataforma NVARCHAR(100);

-- Define o período de geração de vendas online
DECLARE @startDate DATE = '2017-01-01';
DECLARE @endDate DATE = GETDATE();

-- Lista de plataformas para vendas online
DECLARE @plataformas TABLE (plataforma NVARCHAR(100));
INSERT INTO @plataformas (plataforma) VALUES ('Amazon'), ('eBay'), ('Mercado Livre'), ('Alibaba'), ('Shopify');

-- Loop para gerar as vendas online
WHILE @i <= @totalRegistros
BEGIN
    -- Selecionar cliente aleatório
    SET @id_cliente = (SELECT TOP 1 id_cliente FROM Clientes ORDER BY NEWID());

    -- Gerar uma data de venda aleatória dentro do período especificado
    SET @data_venda_online = DATEADD(DAY, ABS(CHECKSUM(NEWID()) % DATEDIFF(DAY, @startDate, @endDate)), @startDate);

    -- Gerar um valor total aleatório entre 10 e 500
    SET @valor_total = CAST(ABS(CHECKSUM(NEWID()) % 490) + 10 AS DECIMAL(10, 2));

    -- Selecionar plataforma aleatória da tabela de plataformas fictícias
    SET @plataforma = (SELECT TOP 1 plataforma FROM @plataformas ORDER BY NEWID());

    -- Inserir o registro de venda online
    INSERT INTO VendasOnline (id_cliente, plataforma, data_venda_online, valor_total)
    VALUES (@id_cliente, @plataforma, @data_venda_online, @valor_total);

    -- Incrementar o contador
    SET @i = @i + 1;
END;


-- Configuração inicial

DECLARE @totalVendas INT = 15000;

DECLARE @id_produto INT;
DECLARE @id_loja INT;
DECLARE @id_venda_online INT;
DECLARE @quantidade INT;
DECLARE @data_venda DATE;
DECLARE @preco_produto DECIMAL(10, 2);

SET		@i = 1;

-- Definir o período de geração de vendas
SET @startDate = '2017-01-01';
SET @endDate   = GETDATE();

-- Loop para gerar as vendas
WHILE @i <= @totalVendas
BEGIN
    -- Selecionar cliente aleatório
    SET @id_cliente = (SELECT TOP 1 id_cliente FROM Clientes ORDER BY NEWID());

    -- Selecionar produto aleatório
    SET @id_produto = (SELECT TOP 1 id_produto FROM Produtos ORDER BY NEWID());

    -- Gerar uma quantidade aleatória entre 1 e 10
    SET @quantidade = ABS(CHECKSUM(NEWID()) % 10) + 1;

    -- Decidir se a venda é online ou física
    IF (RAND() > 0.5)
    BEGIN
        -- Venda Física
        SET @id_loja = (SELECT TOP 1 id_loja FROM Lojas ORDER BY NEWID());
        SET @id_venda_online = NULL;
    END
    ELSE
    BEGIN
        -- Venda Online
        SET @id_loja = NULL;
        -- Seleciona aleatoriamente um ID de venda online da tabela VendasOnline
        SET @id_venda_online = (SELECT TOP 1 id_venda_online FROM VendasOnline ORDER BY NEWID());
    END

    -- Gerar uma data de venda aleatória dentro do período especificado
    SET @data_venda = DATEADD(DAY, ABS(CHECKSUM(NEWID()) % DATEDIFF(DAY, @startDate, @endDate)), @startDate);

    -- Obter o preço do produto da tabela Produtos
    SET @preco_produto = (SELECT preco_produto FROM Produtos WHERE id_produto = @id_produto);

    -- Calcular o valor total da venda
    SET @valor_total = @preco_produto * @quantidade;

    -- Inserir o registro de venda
    INSERT INTO Vendas (id_cliente, id_produto, id_loja, id_venda_online, quantidade_vendida, data_venda, valor_total)
    VALUES (@id_cliente, @id_produto, @id_loja, @id_venda_online, @quantidade, @data_venda, @valor_total);

    -- Incrementar o contador
    SET @i = @i + 1;
END;


--Geração de histórico de vendas

-- Variáveis para controle
DECLARE @valor DECIMAL(10, 2);
DECLARE @data DATE;
DECLARE @last_value DECIMAL(10, 2);
DECLARE @num_variações INT;

DECLARE @days_decrement INT;

SET @id_produto = 1
SET @i = 0

-- Inserir o valor inicial para cada produto
INSERT INTO VariacaoPrecos (id_produto, preco, data_variacao)
SELECT
    p.id_produto,
    p.preco_produto AS preco,
    DATEADD(DAY, -FLOOR(RAND(CHECKSUM(NEWID())) * 365), GETDATE()) AS data_variacao
FROM Produtos p


-- Cursor para iterar sobre cada produto
DECLARE cursor_produtos CURSOR FOR
SELECT id_produto
FROM Produtos;

OPEN cursor_produtos;
FETCH NEXT FROM cursor_produtos INTO @id_produto;

WHILE @@FETCH_STATUS = 0
BEGIN
    -- Obter o último valor e data para o produto atual
    SELECT TOP 1 @last_value = preco, @data = data_variacao
    FROM VariacaoPrecos
    WHERE id_produto = @id_produto
    ORDER BY data_variacao DESC;

    -- Gerar o número de variações entre 3 e 10
    SET @num_variações = FLOOR(RAND(CHECKSUM(NEWID())) * 8) + 3; -- Entre 3 e 10 variações
    SET @i = 0;

    WHILE @i < @num_variações
    BEGIN
        -- Decrementar valor aleatoriamente entre 5 e 20
        SET @valor = @last_value - (FLOOR(RAND(CHECKSUM(NEWID())) * 16) + 5);
        -- Decrementar data aleatoriamente entre 60 e 180 dias
        SET @days_decrement = FLOOR(RAND(CHECKSUM(NEWID())) * 121) + 60;
        SET @data = DATEADD(DAY, -@days_decrement, @data);

        -- Inserir o registro na tabela de variação
        INSERT INTO VariacaoPrecos (id_produto, preco, data_variacao)
        VALUES (@id_produto, @valor, @data);

        -- Atualizar o último valor para a próxima iteração
        SET @last_value = @valor;

        -- Incrementar contador
        SET @i = @i + 1;
    END;

    FETCH NEXT FROM cursor_produtos INTO @id_produto;
END;

CLOSE cursor_produtos;
DEALLOCATE cursor_produtos;
GO

--Geração de variação de preços
    DECLARE @id_produto INT;
    DECLARE @data_variacao DATE;
    DECLARE @preco DECIMAL(10, 2);
    DECLARE @novo_preco DECIMAL(10, 2);
    DECLARE @num_inserts INT;
    DECLARE @dias INT;
    DECLARE @percentual DECIMAL(10, 2);

    -- Cursor para iterar sobre cada produto
    DECLARE produto_cursor CURSOR FOR
        SELECT id_produto, preco_produto
        FROM Produtos;

    OPEN produto_cursor;

    FETCH NEXT FROM produto_cursor INTO @id_produto, @preco;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Define o percentual para a variação inicial (entre -8% e 8%)
        SET @percentual = (RAND() * 0.16) - 0.08;
        SET @novo_preco = @preco * (1 + @percentual);

        -- Insere o primeiro registro na tabela de variação com a variação inicial
        INSERT INTO VariacaoPrecos (id_produto, data_variacao, preco)
        VALUES (@id_produto, DATEADD(YEAR, -1, GETDATE()), @novo_preco);

        -- Define o número de variações a serem inseridas (entre 3 e 10)
        SET @num_inserts = ABS(CHECKSUM(NEWID())) % 8 + 3;

        -- Loop para inserir as variações adicionais
        WHILE @num_inserts > 0
        BEGIN
            -- Define um intervalo aleatório de dias para a nova data
            SET @dias = ABS(CHECKSUM(NEWID())) % 121 + 60;
            SET @data_variacao = DATEADD(DAY, -@dias, (SELECT MIN(data_variacao) FROM VariacaoPrecos WHERE id_produto = @id_produto));

            -- Define o novo preço com base em uma variação realista
            IF ABS(CHECKSUM(NEWID())) % 2 = 0
            BEGIN
                -- Aumento de até 15%
                SET @percentual = (RAND() * 0.15) + 1.00;
            END
            ELSE
            BEGIN
                -- Redução de até 5%
                SET @percentual = 1.00 - (RAND() * 0.05);
            END

            SET @novo_preco = @preco * @percentual;

            -- Insere o novo preço
            INSERT INTO VariacaoPrecos (id_produto, data_variacao, preco)
            VALUES (@id_produto, @data_variacao, @novo_preco);

            -- Atualiza o preço atual para a próxima iteração
            SET @preco = @novo_preco;

            -- Decrementa o número de variações restantes
            SET @num_inserts = @num_inserts - 1;
        END

        FETCH NEXT FROM produto_cursor INTO @id_produto, @preco;
    END

    CLOSE produto_cursor;
    DEALLOCATE produto_cursor;