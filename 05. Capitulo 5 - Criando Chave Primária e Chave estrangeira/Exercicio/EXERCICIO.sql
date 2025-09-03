create database exercicio03
-- Criação da tabela de produtos

CREATE TABLE tb_produtos (
    id_produto INT PRIMARY KEY,
    nome_produto VARCHAR(100),
    preco money,
    estoque INTEGER
);

-- Criação da tabela de clientes
CREATE TABLE tb_clientes (
    id_cliente INT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    cidade VARCHAR(50)
);

-- Criação da tabela de funcionários
CREATE TABLE tb_funcionarios (
    id_funcionario INT PRIMARY KEY,
    nome VARCHAR(100),
    cargo VARCHAR(50)
);

-- Criação da tabela de vendas com chaves estrangeiras
CREATE TABLE tb_vendas (
    id_venda INT PRIMARY KEY,
    data_venda DATE,
    fk_id_produto INT,
	fk_id_cliente INT,
    fk_id_funcionario INT,
    quantidade INT,
    valor_total money,
    FOREIGN KEY (fk_id_produto) REFERENCES tb_produtos(id_produto),
    FOREIGN KEY (fk_id_cliente) REFERENCES tb_clientes(id_cliente),
    FOREIGN KEY (fk_id_funcionario) REFERENCES tb_funcionarios(id_funcionario)
	)

--Inserir Dados na Tabela tb_produtos


INSERT INTO tb_produtos (id_produto, nome_produto, preco, estoque) VALUES
(1, 'Laptop Gamer X', 7500.00, 50),
(2, 'Mouse Óptico Pro', 150.00, 200),
(3, 'Teclado Mecânico RGB', 400.00, 100),
(4, 'Monitor Ultra Wide 34"', 2800.00, 30),
(5, 'Webcam HD 1080p', 250.00, 120);

--Inserir Dados na Tabela tb_clientes

INSERT INTO tb_clientes (id_cliente, nome, email, cidade) VALUES
(101, 'Ana Silva', 'ana.silva@email.com', 'São Paulo'),
(102, 'Bruno Costa', 'bruno.costa@email.com', 'Rio de Janeiro'),
(103, 'Carla Dias', 'carla.dias@email.com', 'Belo Horizonte'),
(104, 'Daniel Alves', 'daniel.alves@email.com', 'São Paulo'),
(105, 'Elisa Pereira', 'elisa.pereira@email.com', 'Curitiba');




--inserir Dados na Tabela tb_funcionarios

INSERT INTO tb_funcionarios (id_funcionario, nome, cargo) VALUES
(1, 'Ana Costa', 'Vendedor'),
(2, 'Lucas Pereira', 'Gerente'),
(3, 'Fernanda Lima', 'Caixa');


--inserir Dados na Tabela tb_vendas

INSERT INTO tb_vendas (id_venda, data_venda, fk_id_produto, fk_id_cliente, fk_id_funcionario, quantidade, valor_total) VALUES
(1001, '2024-06-15', 1, 101, 2, 1, 7500.00),
(1002, '2024-06-15', 2, 101, 2, 2, 300.00),
(1003, '2024-06-16', 3, 102, 3, 1, 400.00),
(1004, '2024-06-17', 1, 103, 1, 1, 7500.00),
(1005, '2024-06-17', 4, 104, 2, 1, 2800.00),
(1006, '2024-06-18', 5, 105, 3, 3, 750.00),
(1007, '2024-06-19', 2, 102, 2, 1, 150.00),
(1008, '2024-06-20', 3, 104, 1, 2, 800.00);

--Inserir Dados na Tabela tb_clientes




--1. Selecionar todos os produtos com preço maior que R$ 500,00.

SELECT nome_produto,preco,estoque
from tb_produtos where preco >500

--2. Encontrar todos os clientes da cidade de "São Paulo"
select nome,cidade
from tb_clientes where cidade ='São Paulo'

--3. Encontrar produtos cujo nome começa com "Teclado".
select nome_produto,preco 
from tb_produtos where nome_produto like 'teclado%'

--4. Encontrar clientes cujo e-mail contém "email.com".
select nome , email from tb_clientes where email like '%email.com%'

--5. Selecionar produtos com preço entre R$ 200,00 e R$ 1000,00 
SELECT NOME_PRODUTO, PRECO FROM 
tb_produtos WHERE PRECO BETWEEN 200 AND 1000


--6. Encontrar vendas realizadas entre '2024-06-16' e '2024-06-18'

SELECT ID_VENDA,DATA_VENDA,VALOR_TOTAL 
FROM tb_vendas WHERE data_venda 
 BETWEEN '2024-06-16' AND '2024-06-18'