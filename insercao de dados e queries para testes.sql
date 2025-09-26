show tables;

INSERT INTO cliente (Nome, Sobrenome, CPF, CNPJ, Endereco, isPJ, isPF) VALUES
('Ana', 'Silva', '11122233344', NULL, 'Rua das Flores, 101', FALSE, TRUE),
('João', 'Santos', '22233344495', NULL, 'Av. Brasil, 202', FALSE, TRUE),
('Maria', 'Oliveira', '33344495566', NULL, 'Rua da Paz, 303', FALSE, TRUE),
('Pedro', 'Almeida', '44455569677', NULL, 'Av. Central, 404', FALSE, TRUE),
('Empresa A', 'Ltda', NULL, '12345678901234', 'Rua Empresarial, 505', TRUE, FALSE),
('Empresa B', 'S.A.', NULL, '98765432109876', 'Av. das Indústrias, 606', TRUE, FALSE),
('Carla', 'Martins', '55566679788', NULL, 'Rua dos Sonhos, 707', FALSE, TRUE),
('Rafael', 'Costa', '66677988999', NULL, 'Rua do Sol, 808', FALSE, TRUE),
('Fernanda', 'Lima', '77788999990', NULL, 'Av. da Liberdade, 909', FALSE, TRUE),
('Gabriel', 'Souza', '88899990911', NULL, 'Rua das Pedras, 1010', FALSE, TRUE),
('Empresa C', 'Eireli', NULL, '11223344556677', 'Rua dos Negócios, 1111', TRUE, FALSE),
('Leticia', 'Rodrigues', '99990019122', NULL, 'Av. da Lua, 1212', FALSE, TRUE),
('Daniel', 'Ferreira', '00019122233', NULL, 'Rua Estrela, 1313', FALSE, TRUE),
('Amanda', 'Gomes', '11100029233', NULL, 'Rua das Acácias, 1414', FALSE, TRUE),
('Thiago', 'Pires', '22211139344', NULL, 'Av. das Árvores, 1515', FALSE, TRUE),
('Empresa D', 'MEI', NULL, '22334455667788', 'Travessa dos Inovadores, 1616', TRUE, FALSE),
('Laura', 'Cardoso', '33322249455', NULL, 'Rua das Montanhas, 1717', FALSE, TRUE),
('Lucas', 'Nunes', '44433355596', NULL, 'Av. do Rio, 1818', FALSE, TRUE),
('Patrícia', 'Diniz', '55544466177', NULL, 'Rua do Mar, 1919', FALSE, TRUE),
('Ricardo', 'Campos', '66655577288', NULL, 'Rua do Céu, 2020', FALSE, TRUE),
('Empresa E', 'Ltda', NULL, '33445566778899', 'Av. dos Profissionais, 2121', TRUE, FALSE),
('Mariana', 'Vieira', '77766688839', NULL, 'Rua da Esperança, 2222', FALSE, TRUE),
('Arthur', 'Rocha', '88877799904', NULL, 'Av. do Sol, 2323', FALSE, TRUE),
('Beatriz', 'Monteiro', '99988800011', NULL, 'Rua da Chuva, 2424', FALSE, TRUE),
('Diego', 'Guedes', '00099911125', NULL, 'Rua dos Ventos, 2525', FALSE, TRUE),
('Empresa F', 'S.A.', NULL, '44556677889900', 'Av. das Colinas, 2626', TRUE, FALSE),
('Juliana', 'Dias', '11100022236', NULL, 'Rua das Estrelas, 2727', FALSE, TRUE),
('Leonardo', 'Pinto', '22211133347', NULL, 'Av. do Lago, 2828', FALSE, TRUE),
('Isabela', 'Costa', '33322244458', NULL, 'Rua dos Pássaros, 2929', FALSE, TRUE),
('Felipe', 'Sousa', '44433355569', NULL, 'Rua das Cores, 3030', FALSE, TRUE);


INSERT INTO produto (Pnome, classificacao_crianca, categoria, avaliacao) VALUES
('Smartphone', FALSE, 'Eletrônico', 4.8),
('Camiseta', FALSE, 'Vestuário', 4.5),
('Boneca', TRUE, 'Brinquedos', 4.9),
('Arroz', FALSE, 'Alimentos', 4.7),
('Liquidificador', FALSE, 'Casa', 4.6),
('Livro A', FALSE, 'livraria', 4.9),
('Tablet', FALSE, 'Eletrônico', 4.7),
('Calça Jeans', FALSE, 'Vestuário', 4.4),
('Carrinho', TRUE, 'Brinquedos', 4.8),
('Feijão', FALSE, 'Alimentos', 4.6),
('Geladeira', FALSE, 'Casa', 4.9),
('Livro B', FALSE, 'livraria', 4.7),
('Notebook', FALSE, 'Eletrônico', 4.9),
('Vestido', FALSE, 'Vestuário', 4.8),
('Jogo de Tab', TRUE, 'Brinquedos', 4.7),
('Macarrão', FALSE, 'Alimentos', 4.5),
('Mesa de Jantar', FALSE, 'Casa', 4.6),
('Livro C', FALSE, 'livraria', 4.5),
('Fones de Ouvido', FALSE, 'Eletrônico', 4.6),
('Jaqueta', FALSE, 'Vestuário', 4.9),
('Quebra-cabeça', TRUE, 'Brinquedos', 4.8),
('Azeite', FALSE, 'Alimentos', 4.9),
('Sofá', FALSE, 'Casa', 4.8),
('Livro D', FALSE, 'livraria', 4.6),
('Mouse', FALSE, 'Eletrônico', 4.7);

INSERT INTO fornecedor (nomeSocial, CNPJ, contato) VALUES
('Tech Fornecimento Ltda.', '10101010101010', '11999887766'),
('Distribuidora de Alimentos S.A.', '20202020202020', '21888776655'),
('Vestuário da Moda Ltda.', '30303030303030', '31777665544'),
('Brinquedos e Cia', '40404040404040', '41666554433'),
('Móveis para Casa', '50505050505050', '51555443322');

INSERT INTO vendedor (nomeSocial, nomeLoja, CNPJ, CPF, localidade, contato, isPJ, isPF) VALUES
('Vendas Online', 'TechShop', '11223344556677', NULL, 'São Paulo', '11987654321', TRUE, FALSE),
('José da Silva', 'Livros do José', NULL, '123456789', 'Rio de Janeiro', '21912345678', FALSE, TRUE),
('Roupas Fofas', 'KidsFashion', '22334455667788', NULL, 'Belo Horizonte', '31923456789', TRUE, FALSE),
('João Santos', 'Eletrônicos do João', '33445566778899', NULL, 'Curitiba', '41934567890', TRUE, FALSE),
('Mariana Ferreira', 'Doces da Mari', NULL, '987654321', 'Porto Alegre', '51945678901', FALSE, TRUE),
('Decora Mais', 'Decore Lar', '44556677889900', NULL, 'Florianópolis', '48956789012', TRUE, FALSE),
('Brinquedos Alegres', 'Diversão Infantil', '55667788990011', NULL, 'Salvador', '71967890123', TRUE, FALSE),
('Lucas Rodrigues', 'Lojinha do Lucas', NULL, '111222333', 'Recife', '81978901234', FALSE, TRUE),
('Ana Lúcia', 'Moda Urbana', NULL, '222333444', 'Brasília', '61989012345', FALSE, TRUE),
('Fornecedor X', 'Grandes Fornecedores', '66778899001122', NULL, 'Goiânia', '62990123456', TRUE, FALSE);

select * from cliente;

INSERT INTO estoque (localizacao, quantidade) VALUES
('São Paulo, SP', 1000),
('Rio de Janeiro, RJ', 800),
('Belo Horizonte, MG', 1200),
('Curitiba, PR', 750),
('Porto Alegre, RS', 900);

INSERT INTO forma_pagamento (idCliente, tipoPagamento, numeroCartao, bandeiraCartao, dataValidade) VALUES
(1, 'Cartão de Crédito', '1234567890123456', 'Visa', '12/28'),
(1, 'Cartão de Débito', '6543210987654321', 'Mastercard', '10/26'),
(2, 'PIX', 'Chave Aleatória', NULL, NULL),
(3, 'Cartão de Crédito', '9876543210987654', 'Elo', '05/27'),
(4, 'Cartão de Crédito', '1111222233334444', 'Visa', '03/29'),
(5, 'PIX', 'Chave CNPJ', NULL, NULL),
(6, 'Cartão de Crédito', '2222333344445555', 'Mastercard', '08/30'),
(7, 'Cartão de Crédito', '3333444455556666', 'Elo', '11/27'),
(8, 'Cartão de Débito', '4444555566667777', 'Visa', '02/25'),
(9, 'PIX', 'Chave Telefone', NULL, NULL),
(10, 'Cartão de Crédito', '5555666677778888', 'Mastercard', '07/28'),
(11, 'Cartão de Crédito', '6666777788889999', 'Visa', '09/26'),
(12, 'PIX', 'Chave Aleatória', NULL, NULL),
(13, 'Cartão de Crédito', '7777888899990000', 'Elo', '04/27'),
(14, 'Cartão de Débito', '8888999900001111', 'Visa', '06/29'),
(15, 'PIX', 'Chave Telefone', NULL, NULL),
(16, 'Cartão de Crédito', '9999000011112222', 'Mastercard', '12/30'),
(17, 'Cartão de Crédito', '0000111122223333', 'Elo', '01/25'),
(18, 'PIX', 'Chave Aleatória', NULL, NULL),
(19, 'Cartão de Crédito', '1111222233334444', 'Visa', '03/28'),
(20, 'Cartão de Débito', '2222333344445555', 'Mastercard', '04/26'),
(21, 'Cartão de Crédito', '3333444455556666', 'Visa', '05/29'),
(22, 'PIX', 'Chave Aleatória', NULL, NULL),
(23, 'Cartão de Crédito', '4444555566667777', 'Elo', '06/27'),
(24, 'Cartão de Crédito', '5555666677778888', 'Mastercard', '07/28'),
(25, 'PIX', 'Chave Telefone', NULL, NULL);

INSERT INTO pedido (idPedidoCliente, statusPedido, descricaoPedido, frete, idFormaPagamentoPedido) VALUES
(1, 'Confirmado', 'Pedido de Eletrônicos', 15.50, 1),
(2, 'Enviado', 'Livros e Jogos', 10.00, 3),
(3, 'Processamento', 'Utensílios para casa', 20.00, 4),
(4, 'Cancelado', 'Roupas e calçados', 12.00, 5),
(5, 'Confirmado', 'Equipamentos de escritório', 30.00, 6),
(6, 'Enviado', 'Alimentos diversos', 18.00, 7),
(7, 'Processamento', 'Pedido de brinquedos', 25.00, 8),
(8, 'Confirmado', 'Pedido de roupas e acessórios', 15.00, 9),
(9, 'Enviado', 'Itens de livraria', 10.00, 10),
(10, 'Processamento', 'Eletrônicos e acessórios', 22.00, 11),
(11, 'Confirmado', 'Itens para casa', 19.00, 12),
(12, 'Enviado', 'Brinquedos', 13.00, 13),
(13, 'Processamento', 'Livros e revistas', 11.00, 14),
(14, 'Confirmado', 'Roupas de inverno', 16.00, 15),
(15, 'Enviado', 'Equipamentos de cozinha', 24.00, 16),
(16, 'Processamento', 'Alimentos', 14.00, 17),
(17, 'Confirmado', 'Pedido de calçados', 17.00, 18),
(18, 'Enviado', 'Itens de decoração', 21.00, 19),
(19, 'Processamento', 'Eletrônicos', 26.00, 20),
(20, 'Confirmado', 'Roupas e calçados', 15.00, 21),
(21, 'Enviado', 'Livros', 10.00, 22),
(22, 'Processamento', 'Brinquedos e jogos', 12.00, 23),
(23, 'Confirmado', 'Alimentos e bebidas', 18.00, 24),
(24, 'Enviado', 'Utensílios para casa', 20.00, 25),
(25, 'Processamento', 'Eletrônicos', 22.00, 1),
(1, 'Confirmado', 'Itens para escritório', 15.00, 2),
(2, 'Enviado', 'Roupas de verão', 10.00, 3),
(3, 'Processamento', 'Livros', 12.00, 4),
(4, 'Confirmado', 'Brinquedos', 18.00, 5),
(5, 'Enviado', 'Alimentos', 16.00, 6),
(6, 'Processamento', 'Itens de casa', 20.00, 7),
(7, 'Confirmado', 'Eletrônicos', 25.00, 8),
(8, 'Enviado', 'Vestuário', 15.00, 9),
(9, 'Processamento', 'Livros', 10.00, 10),
(10, 'Confirmado', 'Utensílios', 18.00, 11);

INSERT INTO entrega (idPedidoEntrega, statusEntrega, codigoRastreio, dataPrevistaEntrega) VALUES
(1, 'Entregue', 'BR123456789BR', '2025-06-15'),
(2, 'Em Trânsito', 'BR987654321BR', '2025-06-18'),
(3, 'Preparando', NULL, '2025-06-20'),
(4, 'Problema na Entrega', 'BR555444333BR', '2025-06-12'),
(5, 'Entregue', 'BR111222333BR', '2025-06-16'),
(6, 'Em Trânsito', 'BR000111222BR', '2025-06-19'),
(7, 'Preparando', NULL, '2025-06-22'),
(8, 'Entregue', 'BR999888777BR', '2025-06-17'),
(9, 'Em Trânsito', 'BR777666555BR', '2025-06-21'),
(10, 'Preparando', NULL, '2025-06-24'),
(11, 'Entregue', 'BR222333444BR', '2025-06-18'),
(12, 'Em Trânsito', 'BR888999000BR', '2025-06-23'),
(13, 'Preparando', NULL, '2025-06-25'),
(14, 'Entregue', 'BR333444555BR', '2025-06-20'),
(15, 'Em Trânsito', 'BR666555444BR', '2025-06-24'),
(16, 'Preparando', NULL, '2025-06-26'),
(17, 'Entregue', 'BR000011112BR', '2025-06-21'),
(18, 'Em Trânsito', 'BR000111000BR', '2025-06-25'),
(19, 'Preparando', NULL, '2025-06-27'),
(20, 'Entregue', 'BR123123123BR', '2025-06-22');

INSERT INTO produto_Vendedor (idProdutoVendedor, idpProduto, quantidadeProduto) VALUES
(1, 1, 100), 
(1, 7, 50),  
(2, 6, 20),  
(2, 12, 15),
(3, 8, 75),  
(4, 13, 120),
(5, 10, 30), 
(6, 17, 90), 
(7, 21, 55), 
(8, 2, 80),  
(9, 6, 40),  
(10, 1, 200);

INSERT INTO produto_Pedido (idPPproduto, idPPpedido, ppQuantidade, ppStatus) VALUES
(1, 1, 1, 'disponivel'),  
(7, 1, 1, 'disponivel'), 
(6, 2, 3, 'disponivel'),  
(15, 2, 1, 'disponivel'),  
(5, 3, 1, 'disponivel'),   
(17, 3, 1, 'disponivel'),  
(8, 4, 1, 'sem estoque'),  
(13, 5, 1, 'disponivel'), 
(10, 6, 5, 'disponivel'), 
(21, 7, 2, 'disponivel'),
(2, 8, 1, 'disponivel'),   
(12, 9, 1, 'disponivel'), 
(1, 10, 1, 'disponivel'),  
(16, 11, 1, 'disponivel'), 
(11, 12, 1, 'disponivel'), 
(18, 13, 1, 'disponivel'), 
(2, 14, 1, 'disponivel'), 
(22, 15, 1, 'disponivel'); 

INSERT INTO estoque_Localidade (idLproduto, idLestoque, localidade) VALUES
(1, 1, 'São Paulo, SP'), 
(2, 1, 'São Paulo, SP'),
(3, 2, 'Rio de Janeiro, RJ'),
(4, 2, 'Rio de Janeiro, RJ'),
(5, 3, 'Belo Horizonte, MG'),
(6, 3, 'Belo Horizonte, MG'),
(7, 4, 'Curitiba, PR'),   
(8, 4, 'Curitiba, PR'),  
(9, 5, 'Porto Alegre, RS'),
(10, 5, 'Porto Alegre, RS');

select * from estoque_localidade;

SELECT * FROM estoque;

INSERT INTO produto_Fornecedor (idProdutofornecedor, idPfProduto, quantidadeProduto) VALUES
(1, 1, 500), 
(1, 7, 300),
(2, 4, 1000),
(2, 10, 800),
(3, 2, 600), 
(3, 8, 450), 
(4, 3, 700),
(4, 9, 350),
(5, 5, 200),
(5, 11, 150);
select * from fornecedor;

-- Quantos pedidos foram feitos por cada cliente?
SELECT c.Nome AS nome_cliente, COUNT(p.idPedido) AS total_pedidos
	FROM cliente c JOIN pedido p 
		ON c.idCliente = p.idPedidoCliente
		GROUP BY c.idCliente, c.Nome
		ORDER BY total_pedidos DESC;
    
-- Algum vendedor também é fornecedor?
SELECT v.nomeSocial AS nome_Social, v.CNPJ AS cnpj_igual
	FROM vendedor v JOIN fornecedor f 
		ON v.CNPJ = f.CNPJ;    
-- NÃO        

-- Relação de produtos fornecedores e estoques
SELECT p.Pnome AS nome_produto, f.nomeSocial AS nome_fornecedor, e.localizacao AS local_estoque, e.quantidade AS quantidade_estoque
	FROM produto p JOIN produto_Fornecedor pf 
    ON p.idProduto = pf.idPfProduto JOIN fornecedor f 
    ON pf.idProdutofornecedor = f.idFornecedor JOIN estoque_Localidade el 
    ON p.idProduto = el.idLproduto JOIN estoque e 
    ON el.idLestoque = e.idPordutoEstoque;
    
    
 -- Relação de nomes dos fornecedores e nomes dos produtos  
 SELECT f.nomeSocial AS nome_fornecedor, p.Pnome AS nome_produto
	FROM fornecedor f JOIN produto_Fornecedor pf 
		ON f.idFornecedor = pf.idProdutofornecedor JOIN produto p 
		ON pf.idPfProduto = p.idProduto
		ORDER BY f.nomeSocial;

-- avaliações dos produtos
SELECT Pnome AS nome_produto, categoria, avaliacao,
    CASE
        WHEN avaliacao >= 4.5 THEN 'Excelente'
        WHEN avaliacao >= 4.0 THEN 'Bom'
        ELSE 'Regular'
    END AS classificacao_avaliacao FROM produto
	WHERE classificacao_crianca = FALSE
	ORDER BY avaliacao DESC;

-- pedidos com mais de um produt0    
SELECT pe.idPedido AS id_do_pedido, pe.descricaoPedido as descricacao_pedido, SUM(pp.ppQuantidade) AS total_de_itens, pe.frete
	FROM pedido pe JOIN produto_Pedido pp 
		ON pe.idPedido = pp.idPPpedido
		GROUP BY pe.idPedido HAVING total_de_itens >1
		ORDER BY total_de_itens DESC;    
    
-- formas de pagamento por pedido    
SELECT p.idPedido, p.descricaoPedido, fp.tipoPagamento as forma_pagamento, fp.numeroCartao, fp.bandeiraCartao
	FROM pedido AS p JOIN forma_pagamento AS fp
		ON p.idFormaPagamentoPedido = fp.idFormaPagamento
		ORDER BY p.idPedido;
    
-- tipos de pagamentos associados a cada cliente
SELECT concat(c.Nome,' ',c.Sobrenome ) AS nome_cliente, fp.tipoPagamento, fp.bandeiraCartao, fp.numeroCartao
	FROM cliente AS c LEFT JOIN forma_pagamento AS fp
		ON c.idCliente = fp.idCliente
		ORDER BY c.Nome;    
  
-- status da entrega  
SELECT p.Pnome AS nome_produto, CONCAT(c.Nome, ' ', c.Sobrenome) AS nomeo_cliente,
	   c.Endereco AS endereco_cliente, e.statusEntrega AS status_entrega, e.codigoRastreio AS codigo_rastreamento
	   FROM produto AS p JOIN produto_Pedido AS pp ON p.idProduto = pp.idPPproduto 
       JOIN pedido AS pe ON pp.idPPpedido = pe.idPedido
       JOIN cliente AS c ON pe.idPedidoCliente = c.idCliente
       JOIN entrega AS e ON pe.idPedido = e.idPedidoEntrega
	   ORDER BY p.Pnome;        
    