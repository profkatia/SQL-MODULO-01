---inserir dados Tabela: TB_ENDERECO

INSERT INTO TB_ENDERECOS (PAIS, UF, CIDADE, BAIRRO, RUA, NUMERO) 
VALUES 
('Brasil', 'SP', 'S�o Paulo', 'Centro', 'Rua Direita', 123),
('Brasil', 'RJ', 'Rio de Janeiro', 'Copacabana', 'Avenida Atl�ntica', 456),
('Brasil', 'MG', 'Belo Horizonte', 'Savassi', 'Rua Ant�nio de Albuquerque', 789),
('Brasil', 'PR', 'Curitiba', 'Centro C�vico', 'Rua C�ndido de Abreu', 101),
('Brasil', 'RS', 'Porto Alegre', 'Moinhos de Vento', 'Rua Padre Chagas', 202);


---inserir dados Tabela: TB_Regional
INSERT INTO TB_REGIONAL (idEndereco, Nome, DDD, Telefone) VALUES
(1, 'Regional S�o Paulo', '11', '98765432'),
(2, 'Regional Rio de Janeiro', '21', '87654321'),
(3, 'Regional Minas Gerais', '31', '76543210'),
(4, 'Regional Paran�', '41', '65432109'),
(5, 'Regional Rio Grande do Sul', '51', '54321098');


---inserir dados Tabela: TB_CLIENTE
INSERT INTO TB_CLIENTE (IDENDERECO, IDREGIONAL, NOME, EMAIL, CPF) VALUES
(1, 1, 'Ana Silva', 'ana.silva@email.com', '11122233344'),
(2, 2, 'Bruno Costa', 'bruno.costa@email.com', '22233344455'),
(3, 3, 'Carla Souza', 'carla.souza@email.com', '33344455566'),
(4, 4, 'Daniel Pereira', 'daniel.pereira@email.com', '44455566677'),
(5, 5, 'Eduarda Lima', 'eduarda.lima@email.com', '55566677788');

---Inserir dados Tabela: TB_VENDEDORES
INSERT INTO TB_VENDEDORES (IDENDERECO, IDREGIONAL, NOME, EMAIL, CPF) VALUES
(1, 1, 'Fernando Santos', 'fernando.santos@email.com', '66677788899'),
(2, 2, 'Giovanna Oliveira', 'giovanna.oliv@email.com', '77788899900'),
(3, 3, 'Hugo Almeida', 'hugo.almeida@email.com', '88899900011'),
(4, 4, 'Isabela Ribeiro', 'isabela.rib@email.com', '99900011122'),
(5, 5, 'Jo�o Martins', 'joao.martins@email.com', '00011122233');

---Inserir dados Tabela: TB_PRODUTO
INSERT INTO TB_PRODUTOS (NOME, LINHA, VALORUNITARIO) VALUES

('Bicicleta Mountain Bike Aro 29', 'Bicicletas', 1800.00),
('Capacete de Ciclismo Pro', 'Acess�rios', 150.00),
('Kit Ferramentas para Bicicleta', 'Manuten��o', 80.00),
('Garrafa T�rmica para Bike', 'Acess�rios', 45.00),
('Luz Traseira LED Recarreg�vel', 'Seguran�a', 60.00);


---Inserir dados Tabela: TB_PEDIDOS

INSERT INTO TB_PEDIDOS (IDCLIENTE, IDVENDEDOR, DATAPEDIDO, QTDITENS, VALORTOTAL) VALUES
(1, 1, '2025-01-10', 2, 1750.00),
(2, 2, '2025-01-15', 1, 4500.00),
(3, 3, '2025-01-20', 3, 3050.00),
(4, 4, '2025-01-25', 1, 3200.00),
(5, 5, '2025-01-30', 2, 5000.00);

-- itensPedido
INSERT INTO itensPedido (idPedido, idProduto, quantidade, precoUnitario, desconto) VALUES
(1, 1, 1, 1500.00, 0.00),
(1, 4, 1, 250.00, 0.00),
(2, 2, 1, 4500.00, 0.00),
(3, 3, 1, 2800.00, 0.00),
(3, 4, 1, 250.00, 0.00),
(4, 5, 1, 3200.00, 0.00),
(5, 2, 1, 4500.00, 0.00),
(5, 1, 1, 1500.00, 1000.00); 