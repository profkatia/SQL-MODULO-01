create database Vendas
use vendas

--Criar a tabela de clientes

CREATE TABLE tb_cliente(
id_cliente int primary key,
nome varchar(50) not null,
cidade varchar(30) not null
);
---Criar a tabela de Pedidos

CREATE TABLE tb_pedidos(
id_pedido int primary key,
descricao varchar(100) not null,
valor money not null,
fk_cliente int not null,
foreign key (fk_cliente) references tb_cliente(id_cliente)
--relacionamento com chave estrangeira fk com chaveP da tabela cliente
)
---insert da tabela cliente
INSERT INTO tb_cliente (id_cliente, nome, cidade) VALUES
(1, 'João Silva', 'São Paulo'),
(2, 'Maria Oliveira', 'Rio de Janeiro'),
(3, 'Carlos Pereira', 'Belo Horizonte'),
(4, 'Ana Santos', 'Porto Alegre');

---insert da tabela de pedidos
INSERT INTO tb_pedidos (id_pedido, descricao, valor, fk_cliente) VALUES
(101, 'Notebook Dell', 4500.00, 1),
(102, 'Mouse Logitech', 150.50, 1),
(103, 'Monitor LG', 980.00, 2),
(104, 'Teclado Mecânico', 350.00, 3),
(105, 'Headset Gamer', 280.90, 2),
(106, 'Webcam Logitech', 200.00, 4);

