create database ecommerce;
use ecommerce;

CREATE TABLE cliente(
	idCliente INT AUTO_INCREMENT PRIMARY KEY,
	Nome VARCHAR(10),
	Snome CHAR(3),
	Sobrenome VARCHAR(20),
	CPF CHAR(11),
	CNPJ CHAR(14),
	Endereco VARCHAR(30),
	isPJ BOOLEAN,
	isPF BOOLEAN,
	CONSTRAINT chk_tipo_cliente CHECK (isPJ + isPF = 1),
	CONSTRAINT chk_documento CHECK (
		(isPF = TRUE AND CPF IS NOT NULL AND CNPJ IS NULL) OR
		(isPJ = TRUE AND CNPJ IS NOT NULL AND CPF IS NULL)
	),
	CONSTRAINT unique_cpf UNIQUE (CPF),
	CONSTRAINT unique_cnpj UNIQUE (CNPJ)
);


CREATE TABLE produto(
	idProduto INT AUTO_INCREMENT PRIMARY KEY,
	Pnome VARCHAR(30),
	classificacao_crianca BOOL DEFAULT FALSE,
	categoria ENUM('Eletrônico', 'Vestuário', 'Brinquedos', 'Alimentos', 'Casa', 'livraria') NOT NULL,
	avaliacao FLOAT DEFAULT 0
);

-- tabela para salvar os detalhes dos cartões de cada cliente.
CREATE TABLE forma_pagamento (
    idFormaPagamento INT AUTO_INCREMENT PRIMARY KEY,
    idCliente INT,
    tipoPagamento ENUM('Cartão de Crédito', 'Cartão de Débito', 'PIX') NOT NULL,
    numeroCartao VARCHAR(16) NOT NULL, -- Geralmente o número do cartão é tokenizado
    bandeiraCartao VARCHAR(20),
    dataValidade VARCHAR(5),
    CONSTRAINT fk_pagamento_cliente FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);

-- Esta tabela pode referenciar uma forma de pagamento.
CREATE TABLE pedido(
	idPedido INT AUTO_INCREMENT PRIMARY KEY,
	idPedidoCliente INT,
	statusPedido ENUM('Cancelado', 'Confirmado', 'Processamento', 'Enviado') DEFAULT 'Processamento',
	descricaoPedido VARCHAR(255),
	frete FLOAT DEFAULT 0,
	-- idFormaPagamento usada para pagar este pedido
	idFormaPagamentoPedido INT,
	CONSTRAINT fk_pedido_cliente FOREIGN KEY (idPedidoCliente) REFERENCES cliente(idCliente)
		ON UPDATE CASCADE,
	CONSTRAINT fk_pedido_pagamento FOREIGN KEY (idFormaPagamentoPedido) REFERENCES forma_pagamento(idFormaPagamento)
);

-- tabela para gerenciar o rastreio e status da entrega.
CREATE TABLE entrega (
	idEntrega INT AUTO_INCREMENT PRIMARY KEY,
	idPedidoEntrega INT UNIQUE, -- Ligação 1:1 com a tabela 'pedido'
	statusEntrega ENUM('Preparando', 'Em Trânsito', 'Entregue', 'Atrasado', 'Problema na Entrega') DEFAULT 'Preparando',
	codigoRastreio VARCHAR(50),
	dataPrevistaEntrega DATE,
	dataEntrega DATE,
	CONSTRAINT fk_entrega_pedido FOREIGN KEY (idPedidoEntrega) REFERENCES pedido(idPedido)
		ON DELETE CASCADE
		ON UPDATE CASCADE
);

CREATE TABLE estoque(
	idPordutoEstoque INT AUTO_INCREMENT PRIMARY KEY,
	localizacao VARCHAR(255),
	quantidade INT DEFAULT 0
);

CREATE TABLE fornecedor(
	idFornecedor INT AUTO_INCREMENT PRIMARY KEY,
	nomeSocial VARCHAR(255) NOT NULL,
	CNPJ CHAR(15) NOT NULL,
	contato VARCHAR(11) NOT NULL,
	CONSTRAINT unique_fornecedor UNIQUE (CNPJ)
);


CREATE TABLE vendedor(
	idvendedor INT AUTO_INCREMENT PRIMARY KEY,
	nomeSocial VARCHAR(255) NOT NULL,
	nomeLoja VARCHAR(255),
	CNPJ CHAR(15),
	CPF CHAR(9),
	localidade VARCHAR(255),
	contato VARCHAR(11) NOT NULL,
	isPJ BOOLEAN,
	isPF BOOLEAN,
	CONSTRAINT chk_tipo_vendedor CHECK (isPJ + isPF = 1),
	CONSTRAINT chk_documento_vendedor CHECK (
		(isPF = TRUE AND CPF IS NOT NULL AND CNPJ IS NULL) OR
		(isPJ = TRUE AND CNPJ IS NOT NULL AND CPF IS NULL)
	),
	CONSTRAINT unique_cnpj_vendedor UNIQUE (CNPJ),
	CONSTRAINT unique_cpf_vendedor UNIQUE (CPF)
);

-- Relacionamento Produto e Vendedor
CREATE TABLE produto_Vendedor(
	idProdutoVendedor INT,
	idpProduto INT,
	quantidadeProduto INT DEFAULT 1,
	PRIMARY KEY(idProdutoVendedor, idpProduto),
	CONSTRAINT fk_produto_vendedor FOREIGN KEY(idProdutoVendedor) REFERENCES vendedor(idvendedor),
	CONSTRAINT fk_produto_produto FOREIGN KEY(idpProduto) REFERENCES produto(idProduto)
);

-- Relacionamento Pedido e Produto
CREATE TABLE produto_Pedido(
	idPPproduto INT,
	idPPpedido INT,
	ppQuantidade INT DEFAULT 1,
	ppStatus ENUM('disponivel', 'sem estoque') DEFAULT 'disponivel',
	PRIMARY KEY(idPPproduto, idPPpedido),
	CONSTRAINT fk_produto_pedido FOREIGN KEY(idPPproduto) REFERENCES produto(idProduto),
	CONSTRAINT fk_produto_produto_p FOREIGN KEY(idPPpedido) REFERENCES pedido(idPedido)
);

-- Relacionamento Estoque e Produto
CREATE TABLE estoque_Localidade(
	idLproduto INT,
	idLestoque INT,
	localidade VARCHAR(255) NOT NULL,
	PRIMARY KEY(idLproduto, idLestoque),
	CONSTRAINT fk_produto_lestoque1 FOREIGN KEY(idLproduto) REFERENCES produto(idProduto),
	CONSTRAINT fk_produto_lestoque FOREIGN KEY(idLestoque) REFERENCES estoque(idPordutoEstoque)
);

-- Relacionamento Produto e Fornecedor
CREATE TABLE produto_Fornecedor(
	idProdutofornecedor INT,
	idPfProduto INT,
	quantidadeProduto INT DEFAULT 1,
	PRIMARY KEY(idProdutofornecedor, idPfProduto),
	CONSTRAINT fk_produto_fornecedor FOREIGN KEY(idProdutofornecedor) REFERENCES fornecedor(idFornecedor),
	CONSTRAINT fk_produto_produto_fornecedor FOREIGN KEY(idPfProduto) REFERENCES produto(idProduto)
);