
---Criar o banco
create database ecommerce_DB

---Colocar em Uso------------

----Criar as Tabelas-----------

-- TB_LOGISTAS

create table TB_LOGISTAS(
ID_Lojista INT NOT NULL,
Nome_Lojista VARCHAR(100) NOT NULL,
CNPJ CHAR(14) NOT NULL,
Email VARCHAR(100),
Telefone CHAR(15) NOT NULL,
CONSTRAINT PK_LOJISTA PRIMARY KEY (ID_LOJISTA)
);

---------------------------------------------------
--TB_PRODUTOS 
CREATE TABLE TB_PRODUTOS(
ID_Produto INT NOT NULL,
ID_Lojista  INT,
Nome_Produto VARCHAR(100) NOT NULL,
Descricao VARCHAR(100) NOT NULL,
Preco MONEY NOT NULL,
SKU VARCHAR(50)

CONSTRAINT PK_PRODUTO PRIMARY KEY(ID_PRODUTO),
CONSTRAINT FK_LOJISTA_PRODUTO FOREIGN KEY (ID_LOJISTA) 
REFERENCES TB_LOGISTAS(ID_Lojista)
 );

---------------------------------------------------------------------
--TB_CLIENTES
CREATE TABLE TB_CLIENTES(
ID_Cliente INT NOT NULL,
Nome_Cliente VARCHAR(100) NOT NULL,
CPF VARCHAR (11) NOT NULL,
Email VARCHAR(100) NOT NULL,
Endereco VARCHAR(100) NOT NULL,
CONSTRAINT PK_CLIENTE PRIMARY KEY (ID_CLIENTE)
);
------------------------------------------------------------------
-- TB_PEDIDOS
CREATE TABLE TB_PEDIDOS(
ID_Pedido INT NOT NULL,
ID_Cliente INT NOT NULL,
Data_Pedido DATE NOT NULL,
Status_Pedido VARCHAR(50) NOT NULL

CONSTRAINT PK_PEDIDO PRIMARY KEY(ID_PEDIDO),

CONSTRAINT FK_CLIENTE_PEDIDOS FOREIGN KEY(ID_CLIENTE)
REFERENCES TB_CLIENTES(ID_CLIENTE)
);
---------------------------------------------------------------------
 --TB_ITENS_PEDIDOS

CREATE TABLE TB_ITENS_PEDIDO (
ID_Pedido INT NOT NULL,
ID_Produto INT NOT NULL,
Quantidade INT NOT NULL,
Preco_Unitario MONEY NOT NULL,

CONSTRAINT PK_ITENS_PEDIDOS PRIMARY KEY(ID_PEDIDO,ID_PRODUTO),

CONSTRAINT FK_PEDIDO_ITENS FOREIGN KEY (ID_PEDIDO)
 REFERENCES TB_PEDIDOS(ID_PEDIDO),

 CONSTRAINT FK_PRODUTO_ITENS FOREIGN KEY (ID_PRODUTO)
  REFERENCES TB_PRODUTOS(ID_PRODUTO)

);



-------------------------INSERTS------------------------
INSERT INTO TB_LOGISTAS (ID_Lojista, Nome_Lojista, CNPJ, Email, Telefone)
VALUES
(1,'Tech Gadgets Store', '12345678000100', 'tech@gadgets.com','(11)91234-5678'),
(2,'Fashion Trends Boutique', '98765432000199', 'fashion@trends.com','(21)98765-4321'),
(3, 'Home Decor Emporium', '55555555000188', 'home@decor.com','(31)95555-5555');





INSERT INTO TB_PRODUTOS (ID_Produto, Nome_Produto, Descricao, Preco, ID_Lojista, SKU)
VALUES
(101, 'Smartphone XYZ', 'Smartphone com câmera de 108MP e tela AMOLED', 1200.00, 1,
'TG-XYZ-001'),
(102, 'Smartwatch ABC', 'Smartwatch com monitoramento cardíaco e GPS', 350.00, 1, 'TGABC-002'),
(103, 'Vestido Floral Verão', 'Vestido floral leve para o verão', 80.00, 2, 'FT-VF-001'),
(104, 'Calça Jeans Skinny', 'Calça jeans skinny com elastano', 95.00, 2, 'FT-JS-002'),
(105, 'Luminária de Mesa LED', 'Luminária de mesa com ajuste de intensidade', 60.00, 3,
'HD-LM-001'),
(106, 'Almofada Decorativa', 'Almofada decorativa com estampa geométrica', 30.00, 3, 'HDAD-002');





-- Inserindo dados na tabela Clientes
INSERT INTO TB_CLIENTES (ID_Cliente, Nome_Cliente, CPF, Email, Endereco) VALUES
(201, 'Ana Silva', '11122233344', 'ana.silva@email.com', 'Rua das Flores, 123'),
(202, 'Bruno Oliveira', '55566677788', 'bruno.oliveira@email.com', 'Avenida Principal, 456'),
(203, 'Carla Souza', '99900011122', 'carla.souza@email.com', 'Travessa da Paz, 789');INSERT INTO TB_Pedidos (ID_Pedido, Data_Pedido, ID_Cliente, Status_Pedido) VALUES
(301, '2023-11-15', 201, 'Entregue'),
(302, '2023-11-15', 202, 'Em processamento'),
(303, '2023-11-16', 203, 'Enviado');-- Inserindo dados na tabela Itens_Pedido
INSERT INTO TB_ITENS_PEDIDO (ID_Pedido, ID_Produto, Quantidade, Preco_Unitario) VALUES
(301, 101, 1, 1200.00),
(301, 102, 1, 350.00),
(302, 103, 2, 80.00),
(302, 104, 1, 95.00),
(303, 105, 1, 60.00),
(303, 106, 3, 30.00)