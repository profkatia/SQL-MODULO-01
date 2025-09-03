/*
Exercício 1:

Crie um banco de dados com nome a sua escolha e uma tabela chamada
"tb_usuarios"

Com os seguintes atributos: 
id_user , Nome, Idade, Renda_Mensal, Altura, Peso e E-mail.

Renda mensal tipo de dados money
altura decimal(5,2)
peso int
*/

CREATE DATABASE CLIENTES;

USE CLIENTES;

CREATE TABLE TB_USUARIOS(
ID_USER INT IDENTITY (1,1) PRIMARY KEY,
NOME VARCHAR(50) NOT NULL,
IDADE INT NOT NULL,
RENDA_MENSAL MONEY NOT NULL,
ALTURA DECIMAL(5,2) NOT NULL,
PESO INT NOT NULL,
EMAIL VARCHAR (50)
)


/*
Insira pelo menos 5 registros na tabela, lembre-se de campo
identificador.
*/
INSERT INTO TB_USUARIOS(NOME,IDADE,RENDA_MENSAL,ALTURA,PESO,EMAIL)
VALUES('KATIA',39,4000,1.73,60,'Katia@gmail.com'),
	  ('Fatima',45,5800,1.70,80,'fa_2025@gmail.com'),
	  ('Julio',18,5800,1.70,80,'juca@gmail.com'),
	  ('Roberto',15,4584,1.70,90,'ro@gmail.com'),
	  ('Aline',20,7895,1.70,90,'aline@gmail.com')

select * from TB_USUARIOS


--------------------------------------------------------------------------------

