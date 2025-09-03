--Inserindo comentário no código---
---comentario de uma única linha fgfgfgfgfg
/*fdfd
dfdfdf
dfdfd
dfdfdf
fdfdf
*/

---Criando  banco de dados
CREATE DATABASE db_cadastro;

--Colocando o banco e uso
USE db_cadastro

---Criando tabela Pessoas
CREATE TABLE Pessoas(
id_pessoas int identity(1,1) primary key,
Nome varchar(50) not null,
Idade int not null,
Uf char(2) not null
)

---Criar uma tabela com o nome de tb_Endereco(Id_endereco,Rua,Bairro,Numero,cep)

CREATE TABLE TB_ENDERECO(
Id_endereco int identity(1,1) primary key,
Rua varchar(50) not null,
Bairro varchar (30) not null,
Numero varchar(5) not null,
cep char(9) not null,
complemento varchar(100)
)


---Inserindo registros na tabela

insert into Pessoas(Nome,Idade,Uf)
values('João Pedro',45,'SP'),
	  ('Maria da Silva',56,'RJ'),
	  ('Felipe Martins',60,'SP')

--- Selecionar a tabela usando o comando Select-----
select * from Pessoas

--- Selecionar a tabela usando o comando Select endereco-----

insert into TB_ENDERECO(Rua,Bairro,Numero,cep)
 values('Rua João Melo','Morro grande',8,'02978786'),
        ('Rua amarela','Brasilândia',88,'02978000'),
		('Avenida Paulista','Trianon',8,'029781234')

select * from TB_ENDERECO




