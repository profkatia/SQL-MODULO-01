USE PEDIDOS;
SELECT * FROM TB_EMPREGADO;

---Selecionar codfun , nome e salario, calcular 1.10 de ajuste
SELECT CODFUN AS CODIGO,
NOME AS FUNCION�RIO,
SALARIO,
SALARIO * 1.10 AS SALARIOAJUSTADO
FROM TB_EMPREGADO

-- Lista os 5 empregados mais antigos
SELECT TOP 5 * FROM TB_EMPREGADO
ORDER BY DATA_ADMISSAO

-- Lista os 5 empregados mais novos
SELECT TOP 5 * FROM TB_EMPREGADO
ORDER BY DATA_ADMISSAO DESC

-- Lista os 5 empregados que ganham menos
SELECT TOP 5 * FROM TB_EMPREGADO
ORDER BY SALARIO

-- Lista os 5 empregados que ganham mais
SELECT TOP 5 * FROM TB_EMPREGADO
ORDER BY SALARIO DESC


--Mostrando os funcion�rios com SAL�RIO acima de 5000
SELECT CODFUN, NOME,COD_CARGO, SALARIO FROM TB_EMPREGADO
WHERE SALARIO > 5000
ORDER BY SALARIO DESC


--Funcion�rios com SALARIO entre 3000 e 5000

SELECT * FROM TB_EMPREGADO
WHERE SALARIO BETWEEN 3000 AND 5000
ORDER BY SALARIO


/*
busca, nas colunas NOME e ESTADO da tabela TB_CLIENTE, os
clientes dos estados do Amazonas (AM), Paran� (PR), Rio de Janeiro (RJ) e S�o Paulo
(SP):
*/
SELECT NOME, ESTADO FROM TB_CLIENTE
 WHERE ESTADO IN ('AM','PR','SP')

--Busca na tabela TB_EMPREGADO, os registros cujo COD_CARGO seja nulo:
SELECT * FROM TB_EMPREGADO

--Este exemplo busca, na tabela TB_EMPREGADO, os registros cuja DATA_NASCIMENTO
--seja nula:
SELECT * FROM TB_EMPREGADO
WHERE COD_CARGO IS NULL

/*
O exemplo adiante busca, na tabela TB_EMPREGADO, os registros cuja DATA_
NASCIMENTO n�o seja nula:
*/
SELECT * FROM TB_EMPREGADO
WHERE DATA_NASCIMENTO IS NOT NULL

--Total de sal�rio de cada departamento
SELECT COD_DEPTO,
SUM(SALARIO) AS TOTAL_SAL
FROM TB_EMPREGADO
GROUP BY COD_DEPTO
ORDER BY TOTAL_SAL


 --Liste a tabela TB_PRODUTO, mostrando as colunas COD_PRODUTO, 
 --DESCRICAO, PRECO_CUSTO, PRECO_VENDA 
 --e calculando o lucro unit�rio (PRECO_VENDA � PRECO_CUSTO);

 SELECT
	COD_PRODUTO,
	DESCRICAO,
	PRECO_CUSTO,
	PRECO_VENDA,
    (PRECO_VENDA - PRECO_CUSTO) AS lUCRO_UNITARIO
FROM
 TB_PRODUTO



--Liste a tabela TB_PRODUTO, mostrando os campos COD_PRODUTO, 
--DESCRICAO e calculando o valor total investido no estoque 
--daquele produto (QTD_REAL * PRECO_CUSTO);

SELECT
   COD_PRODUTO,
   DESCRICAO,
   (QTD_REAL * PRECO_CUSTO) AS VALOR_ESTOQUE
   FROM TB_PRODUTO

-- Liste a tabela TB_ITENSPEDIDO, mostrando 
--as colunas NUM_PEDIDO, NUM_ITEM, COD_PRODUTO, PR_UNITARIO, QUANTIDADE, 
--DESCONTO e calculando o valor de cada item (PR_UNITARIO * QUANTIDADE * (1-DESCONTO/100));

SELECT * FROM TB_ITENSPEDIDO
SELECT
 NUM_PEDIDO,
 NUM_ITEM,
 COD_PRODUTO,
 PR_UNITARIO,
 QUANTIDADE,
 DESCONTO,

 (PR_UNITARIO * QUANTIDADE * (1-DESCONTO/100)) AS VALOR_DESC
 FROM TB_ITENSPEDIDO



--Liste todos os pedidos com data de emiss�o anterior a Jan/2014;
--Esta consulta usa o operador < para encontrar todas as 
--datas que s�o anteriores a 1� de janeiro de 2014.

SELECT * FROM
 TB_PEDIDO
  WHERE 
   DATA_EMISSAO < '2014-01-01'

--verificar se os funcion�rios da tabela TB_EMPREGADO s�o ou n�o sindicalizados:

SELECT NOME , SALARIO,

 CASE SINDICALIZADO
	WHEN 'S' THEN 'SIM'
	WHEN 'N' THEN  'N�O'
 ELSE 'N/C'

 END AS SINDICATO,
 DATA_ADMISSAO
 FROM TB_EMPREGADO

--- verificamos em qual dia da semana os empregados foram admitidos:



    
