/*
Exercicio 2

Crie um banco de dados para minha loja de biscoitos, 
observe a carga para definir quais colunas devem ser
criadas...
*/

---Criar o banco de dados----
CREATE DATABASE LOJA_BISCOITO;

----Criar as tabelas
CREATE TABLE PRODUTOS(
ID_LOJA INT IDENTITY(1,1) PRIMARY KEY,
Produto varchar(50) not null,
Descricao varchar(100) not null,
Marca varchar(50) not  null,
Preco money not null,
Quantidade int not null
)


---Criar os insert com a carga de dados 
insert into PRODUTOS(Produto,Descricao,Marca,Preco,Quantidade)
values
('Biscoito', 'Bonno, Doce de Leite', 'Nestlé', 3.99, 50),
('Biscoito', 'Bonno, Doce de Morango', 'Nestlé', 2.99, 37),
('Biscoito', 'Bonno, Doce de Chocolate', 'Nestlé', 5.99, 8),
('Biscoito', 'Wafer, Chocolate', 'Bauduco', 7.50, 3),
('Biscoito', 'Wafer, Morango', 'Bauduco', 5.49, 2),
('Biscoito', 'Wafer, Damasco', 'Bauduco', 8.75, 70),
('Biscoito', 'Wafer, Triplo choc', 'Bauduco', 14.99, 54),
('Biscoito', 'Recheado, Chocolate', 'Piraquê', 9.99, 12),
('Biscoito', 'Recheado, Morango', 'Piraquê', 6.49, 4),
('Biscoito', 'Recheado, Uva', 'Piraquê', 18.25, 9),
('Biscoito', 'Recheado, Coco', 'Piraquê', 13.99, 5),
('Biscoito', 'Chocolate', 'Grupo Mil', 14.99, 14),
('Biscoito', 'Baunilha', 'Grupo Mil', 15.50, 61),
('Biscoito', 'Maça verde', 'Grupo Mil', 18.49, 39),
('Biscoito', 'Chocolate branco', 'Grupo Mil', 19.99, 5),
('Biscoito', 'Melancia', 'Grupo Mil',7.99, 8),
('Biscoito', 'Beterraba', 'Grupo Mil',10.99, 2),
('Biscoito', 'Jiló', 'Grupo Mil', 6.99, 4),
('Biscoito', 'Mamão papaia', 'Grupo Mil', 12.75, 7),
('Biscoito', 'Algodão doce', 'Grupo Mil', 9.49, 10);


--- selecionar todos os registros da  tabela 
select * from PRODUTOS -- buscando todas as coluna  da tabeba 
select Produto,Marca,Preco from PRODUTOS --Buscar algumas colunas






----Continuação do Exercicio com o instrutor-----------

--selecionar  a coluna fabricante onde(Where) seja igual a Nestle
select * from PRODUTOS where Marca='Nestlé'

-- Selecionar  todos os preços que seja  maior que 10
select * from PRODUTOS where Preco >10

--Selecionar as todas as quantidades igual a 5
SELECT * FROM PRODUTOS WHERE Quantidade = 5

--Selecionar a todos onde(WHERE) a descrição contem(LIKE) Recheado
SELECT * FROM PRODUTOS WHERE  Descricao LIKE '%RECHEADO%'

--- Selecionar os registros da tabela ordenado pelo preço (Order By)

SELECT * FROM PRODUTOS  ORDER BY  PRECO DESC --CRESCENTE

--- Atualizar o preco do Id = 1 para 8.99 (UPDATE- ATUALIZAR)
UPDATE PRODUTOS SET Preco=8.99  WHERE ID_LOJA=1

--- Excluir o registro do id =18 DELETE

DELETE FROM PRODUTOS WHERE ID_LOJA = 18

SELECT * FROM PRODUTOS