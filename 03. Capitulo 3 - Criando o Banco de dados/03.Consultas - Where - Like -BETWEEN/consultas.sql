--Colocar o banco em uso
use CLIENTES

--- Selecionar Coluna nome e renda mensal da tabela usuario
select NOME, RENDA_MENSAL FROM TB_USUARIOS 

---- Gerar um apelido na resposta do select  -- as
SELECT NOME,RENDA_MENSAL AS TOTAL FROM TB_USUARIOS

/*
Clausula Where :Ela aparece após a cl�usula FROM em uma instru��o SELECT
Sintaxe:
SELECT coluna1, coluna2
FROM nome_tabela
WHERE condicao;
*/

--- Pessoas com renda superior a 5 mil usando a clausula where (onde)
SELECT * FROM TB_USUARIOS WHERE RENDA_MENSAL >= 5000

--- Selecione na tabela usuario todos registros onde a renda mensal seja maior que 7000
SELECT * FROM TB_USUARIOS WHERE RENDA_MENSAL >=7000

---Nome, idade e altura das pessoas com idade menor ou igual a 50  anos
SELECT NOME,IDADE,ALTURA FROM TB_USUARIOS WHERE IDADE<=50

---Listas as pessoas onde  o peso maior que 80
SELECT * FROM TB_USUARIOS WHERE PESO >=80

--- listar pessoas com a idade acima de 60 e (and) renda mensal  maior igual a 5000
SELECT * FROM TB_USUARIOS WHERE IDADE >=60 AND RENDA_MENSAL>5000


--BETWEEN: Filtra valores dentro de um determinado intervalo :

---Nome das pessoas com altura entre 1.80 e 1.90 usando (BETWEEN)

SELECT * FROM TB_USUARIOS WHERE ALTURA BETWEEN 1.80 AND 1.90
SELECT * FROM TB_USUARIOS

/*LIKE: --Like Usado para procurar um padr�o especificado em uma coluna. 
Utiliza caracteres curinga:
*/

---Todas as pessoas cujo o nome come�a com a letra L--- (Like) ---
SELECT * FROM TB_USUARIOS WHERE NOME LIKE 'f%'

---Todas as  as pessoas cujo termina com a letra a '%a'
SELECT * FROM TB_USUARIOS WHERE NOME LIKE '%a'


---Todas as  pessoas que nao(NOT) inicia com �[a - b]%'
select * from TB_USUARIOS where nome not like '[a-b-k]%'

---texto que contem email---
select * from TB_USUARIOS where email  like '%gmail%'
