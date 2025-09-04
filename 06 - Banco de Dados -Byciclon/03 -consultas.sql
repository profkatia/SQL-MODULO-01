
---1. Vendedores cujo nome contém "%a%"
SELECT * FROM TB_VENDEDORES WHERE NOME LIKE '%a%'

---2.Pedidos feitos por um cliente específico -  IDPEDIDO = 2
select * from TB_PEDIDOS where IDPEDIDO = 2

---3.Produtos com preço entre(BETWEEN) R$ 1.000 e R$ 2.500
select * from  TB_PRODUTOS where VALORUNITARIO BETWEEN 1000 AND 2500

---4.Listar os 3 últimos pedidos feitos TOP 3 (pula)
SELECT TOP 3 * FROM TB_PEDIDOS ORDER BY  DATAPEDIDO DESC


--5.Endereços de clientes em "São Paulo" TB_ENDEREÇO
SELECT * FROM TB_ENDERECOS WHERE CIDADE = 'S?o Paulo'
select * from TB_ENDERECOS


--6 Clientes cujo nome começa com "C"  tb_cliente
SELECT * FROM TB_CLIENTE WHERE NOME LIKE 'c%'


--7 Total de pedidos feitos por um cliente especifico tb_pedidos
--cliente IDCLIENTE  3 (pula) --COUNT 
SELECT COUNT(*) AS 'TOTAL PEDIDOS' FROM TB_PEDIDOS WHERE IDCLIENTE =3

--8- Listar todos os produtos com nome que contém "Bicicleta"
SELECT * FROM TB_PRODUTOS WHERE NOME LIKE '%BICICLETA%'


---9 Vendedores com e-mails que terminam em "@email.com"
SELECT * FROM TB_VENDEDORES WHERE EMAIL LIKE '%@EMAIL.COM'

--10) Produtos com Preço(VALORUNITARIO) menor que R$ 1.500
SELECT * FROM TB_PRODUTOS WHERE VALORUNITARIO < 1500

--11 Contar quantos(COUNT) clientes existem - TB_CLIENTE
SELECT COUNT(*) AS TOTAL_CLIENTES FROM TB_CLIENTE

--12 Listar os 2 produtos mais baratos ORDENADO POR VALORUNITARIO
SELECT TOP 2 * FROM TB_PRODUTOS
 ORDER BY VALORUNITARIO

--13  Endereços que estão em "Salvador" e tem número maior que 100
SELECT * FROM TB_ENDERECOS
SELECT * FROM TB_ENDERECOS WHERE CIDADE = 'Rio de Janeiro' and numero >100

--14. Listar todos os pedidos DO DIA 20 realizados em JANEIRO de 2025

select * from TB_PEDIDOS where DAY(datapedido)=20 
            and month(datapedido)=1 and YEAR(datapedido)=2025
/*
day - dia
month - mês 
year - ano
*/

------------------------------------------------------------------------
----GROUP BY---- (AGRUPAR AS LINHAS DA TABELA QUANDO FOR GERADO UM TOTAL)

-- Exemplo que calcula o valor total dos produtos por linha
select linha , SUM(VALORUNITARIO) AS VALOR_TOTAL
  FROM TB_PRODUTOS
  GROUP BY lINHA

-- contar quantos vendedores existem em cada regional agrupar
--pela coluna IDREGIONAL
SELECT IDREGIONAL, COUNT(*) AS QTDVENDEDORES
 FROM TB_VENDEDORES
 GROUP BY IDREGIONAL

--Contar quantos endereços existem por estado (UF) AGRUPAR POR UF

SELECT UF , COUNT(*) AS  TOTAL_ENDEREÇOS
 FROM TB_ENDERECOS
 GROUP BY UF


----VALORES DISTINTOS----- CONTA UMA ÚNICA VEZ OS DADOS QUE ESTÃO REPITIDOS
SELECT DISTINCT VALORUNITARIO FROM TB_PRODUTOS
---------------------------------------------------------------------
 --- NUMERO TOTAL DE PEDIDOS , VALOR MÉDIO E MAIOR VALOR DE PEDIDO
 SELECT
  COUNT(*) AS  TOTALPEDIDOS,
  AVG(VALORTOTAL) AS MEDIA_VALOR,
  MAX(VALORTOTAL) AS MAIO_VALOR,
  MIN(VALORTOTAL) AS MENOR_VALOR
   FROM TB_PEDIDOS

---VALOR BRUTO (SEM DESCONTO) E VALOR LIQUIDO (COM DESCONTO) DOS ITENS VENDIDOS
SELECT 
 SUM(QUANTIDADE * PRECOUNITARIO) AS VALOR_BRUTO,
 SUM((QUANTIDADE * PRECOUNITARIO) - DESCONTO) AS VALOR_LIQUIDO
  FROM ITENSPEDIDO










