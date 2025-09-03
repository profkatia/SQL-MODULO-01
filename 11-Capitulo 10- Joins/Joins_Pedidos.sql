
Use PEDIDOS


--Liste os campos NUM_PEDIDO, DATA_EMISSAO e VLR_TOTAL de PEDIDOS, 
--seguidos de NOME do vendedor;

SELECT
P.NUM_PEDIDO,
P.DATA_EMISSAO,
P.VLR_TOTAL,
V.NOME AS NOME_VENDEDOR

FROM 
TB_PEDIDO AS P

JOIN TB_VENDEDOR AS V ON P.CODVEN = V.CODVEN

--Liste os pedidos com o nome do vendedor e o nome do cliente;
SELECT 
 P.NUM_PEDIDO,
 P.DATA_EMISSAO,
 P.VLR_TOTAL,
 V.NOME AS NOME_VENDEDOR,
 C.NOME AS CLIENTE

 FROM TB_PEDIDO AS P

  JOIN
  TB_VENDEDOR AS V ON P.CODVEN = V.CODVEN

  JOIN 
  TB_CLIENTE AS C ON P.CODCLI = C.CODCLI

--liste os campos NUM_PEDIDO, DATA_EMISSAO e VLR_TOTAL de PEDIDOS, 
--seguidos de NOME do cliente;


SELECT 
 P.NUM_PEDIDO,
 P.DATA_EMISSAO,
 P.VLR_TOTAL,
 C.NOME AS CLIENTE

 FROM
  TB_PEDIDO AS P
  JOIN
  TB_CLIENTE AS C ON P.CODCLI = C.CODCLI



--Liste os campos NUM_PEDIDO e DATA_EMISSAO da tabela TB_PEDIDO, 
 --e adicione o NOME do cliente correspondente.




---Liste todos os clientes e os números de seus pedidos. 
SELECT
 C.NOME AS CLIENTE,
 P.NUM_PEDIDO

 FROM 
  TB_CLIENTE AS C 

  LEFT JOIN
	TB_PEDIDO AS P ON C.CODCLI = P.CODCLI


--Para um pedido específico (por exemplo, NUM_PEDIDO = 35),
--liste a DESCRICAO de todos os produtos comprados nesse pedido.

SELECT
 P.DESCRICAO

 FROM
 TB_ITENSPEDIDO AS IP

 JOIN 
 TB_PRODUTO AS P  ON IP.COD_PRODUTO = P.COD_PRODUTO

 WHERE
  IP.NUM_PEDIDO=35

--Mostre o NUM_PEDIDO, a DATA_EMISSAO e o nome do produto 
--(DESCRICAO) para todos os itens de pedido. Ordene os resultados 
--por DATA_EMISSAO do mais recente para o mais antigo.

SELECT

  ITEN.NUM_PEDIDO,
  PE.DATA_EMISSAO,
  PR.DESCRICAO AS DESCRICAO_PRODUTO

  FROM
   TB_ITENSPEDIDO AS ITEN

   JOIN 
	  TB_PEDIDO AS PE ON ITEN.NUM_PEDIDO = PE.NUM_PEDIDO

   JOIN
	  TB_PRODUTO AS PR ON ITEN.COD_PRODUTO = PR.COD_PRODUTO

   ORDER BY 
   PE.DATA_EMISSAO DESC


--Calcule o valor total de vendas para cada vendedor. 
--Mostre o nome do vendedor e o valor total somado.

SELECT 
 V.NOME AS NOME_VENDEDOR,
  SUM(P.VLR_TOTAL) AS  TOTALVENDAS
FROM 
TB_VENDEDOR AS V

JOIN
	TB_PEDIDO AS P ON V.CODVEN = P.CODVEN

	GROUP BY V.NOME



--Calcule o preço médio de venda para cada tipo de produto. 
--Mostre o tipo do produto e o preço médio.

SELECT
 TP.TIPO AS TIPO_PRODUTO,
	AVG(P.PRECO_VENDA) AS PRECO_MEDIO

	FROM
	TB_PRODUTO AS P

	JOIN 
	TB_TIPOPRODUTO AS TP ON P.COD_TIPO = TP.COD_TIPO
	GROUP BY
	TP.TIPO






--Encontre a quantidade total de cada produto que foi vendido. 
---Mostre a descrição do produto e a quantidade total.
SELECT
 P.DESCRICAO AS DESCRICAO_PRODUTO,
 SUM(IP.QUANTIDADE) AS QUANTIDADE_TOTAL

 FROM
 TB_PRODUTO AS P

 JOIN 
  TB_ITENSPEDIDO AS IP ON P.COD_PRODUTO = IP.COD_PRODUTO
   GROUP BY
   P.DESCRICAO

