--Exemplos de Funções de Texto
--1. Nome dos clientes em maiúsculo
SELECT NOME, UPPER(NOME) AS NOME_MAIUSCULO
FROM TB_CLIENTE;

--2. Nome dos vendedores em minúsculo
SELECT NOME, LOWER(NOME) AS NOME_MINUSCULO
FROM TB_VENDEDORES;

--3. Pegar apenas o primeiro nome dos clientes

--(considerando que o espaço separa nome e sobrenome)

SELECT NOME,
       SUBSTRING(NOME, 1, CHARINDEX(' ', NOME)-1) AS PRIMEIRO_NOME
FROM TB_CLIENTE;

--4. Trocar parte do nome da regional
SELECT NOME,
       REPLACE(NOME, 'Regional ', '') AS REGIAO
FROM TB_REGIONAL;

--5. Mostrar o tamanho do nome da cidade
SELECT CIDADE,
       LEN(CIDADE) AS QTD_CARACTERES
FROM TB_ENDERECOS;

--6. Encontrar a posição da palavra "Rua" nos endereços
SELECT RUA,
       CHARINDEX('Rua', RUA) AS POSICAO_RUA
FROM TB_ENDERECOS;

--7. Concatenar nome e CPF do cliente
SELECT CONCAT(NOME, ' - CPF: ', CPF) AS CLIENTE_CPF
FROM TB_CLIENTE;

--8. Extrair o DDD e telefone juntos
SELECT NOME,
       CONCAT('(', DDD, ') ', Telefone) AS CONTATO
FROM TB_REGIONAL;


--LTRIM / RTRIM → remover espaços (útil se vier dado com espaços extras)
SELECT '   Teste   ' AS ORIGINAL,
       LTRIM('   Teste   ') AS SEM_ESQUERDA,
       RTRIM('   Teste   ') AS SEM_DIREITA,
       TRIM('   Teste   ') AS SEM_ESPACOS;