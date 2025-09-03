----CONSULTAS----
--TB_PEDIDOS � Total de pedidos por status
    
SELECT STATUS_PEDIDO, COUNT(*) AS TOTAL_PEDIDOS
	FROM TB_PEDIDOS
	GROUP BY Status_Pedido;


--TB_ITENS_PEDIDOS � Quantidade e valor total por produto
SELECT ID_PRODUTO, SUM(QUANTIDADE) AS TOTAL_UNIDADES,
SUM(QUANTIDADE * PRECO_UNITARIO)  AS FATURAMENTO
FROM TB_ITENS_PEDIDO
GROUP BY ID_PRODUTO;
 
--Mostrar o n�mero total de clientes cadastrados
SELECT COUNT(*) AS TOTALCLIENTE
 FROM TB_CLIENTES


-- TB_PRODUTOS - mostrar os valores m�nimo e m�ximo:

SELECT MIN(PRECO) AS PRECO_MINIMO, 
   MAX(PRECO) AS PRECO_MAXIMO
		FROM TB_PRODUTOS



--TB_ITENS_PEDIDOS- Calcular o valor 
--total de um pedido espec�fico (ex: ID_Pedido = 301)

SELECT ID_PEDIDO, SUM(QUANTIDADE*PRECO_UNITARIO) AS VALOR_TOTAL
 FROM TB_ITENS_PEDIDO
 WHERE ID_Pedido = 301
 GROUP BY ID_Pedido

--TB_PEDIDOS-Selecionar os �ltimos pedidos pela data do pedido

SELECT ID_PEDIDO,ID_CLIENTE,DATA_PEDIDO,STATUS_PEDIDO
	FROM TB_PEDIDOS
	ORDER BY DATA_PEDIDO DESC

-- TB_PEDIDOS - os �ltimos 3 pedidos, adicione TOP 

SELECT TOP 3 * 
FROM TB_PEDIDOS
ORDER BY Data_Pedido DESC

---TB_ITENS_PEDIDOS - Total de unidades vendidas por produto

SELECT ID_PRODUTO, SUM(QUANTIDADE) AS TOTAL_UNIDADES
FROM TB_ITENS_PEDIDO
GROUP BY ID_Produto


-- Fim do m�s da data Mostrar o �ltimo dia do m�s de cada pedido - EOMONTH:
SELECT ID_PEDIDO,DATA_PEDIDO,
EOMONTH(DATA_PEDIDO) AS FimM�s
from TB_PEDIDOS


--DATEDIFF � Diferen�a entre duas datas
--Calcular quantos dias se passaram desde que o pedido foi feito (at� hoje):

select id_pedido,data_pedido,
datediff(day,data_pedido,getdate()) as Dias_Pedido
 from TB_PEDIDOS

/*

Classificar produtos por faixa de pre�o 
PRECO < 50 'BARATO'
PRECO ENTRE 50 E 100 'NORMAL'
SEN�O CARO
*/

SELECT
ID_PRODUTO,
NOME_PRODUTO,
PRECO,
 CASE 
	 WHEN PRECO <50 THEN 'BARATO'
	 WHEN PRECO BETWEEN 50 AND 100 THEN 'NORMAL'
 ELSE 'CARO'
END AS FAIXA_PRECO
FROM TB_PRODUTOS



