
SELECT TP.SABOR, NF.DATA_VENDA,INF.QUANTIDADE 
FROM  tabela_de_produtos TP
INNER JOIN itens_notas_fiscais INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF ON NF.NUMERO = INF.NUMERO;

/*QUANTIDADE VENDIDA POR SABOR NO ANO DE 2016*/
SELECT TP.SABOR, YEAR(DATA_VENDA) AS ANO,SUM(INF.QUANTIDADE) AS QUANTIDADE 
FROM  tabela_de_produtos TP
INNER JOIN itens_notas_fiscais INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY SABOR ,YEAR(DATA_VENDA)
ORDER BY  QUANTIDADE DESC ;

/*QUANTIDADE TOTAL */
SELECT  YEAR(DATA_VENDA) AS ANO,SUM(INF.QUANTIDADE) AS QUANTIDADE 
FROM  tabela_de_produtos TP
INNER JOIN itens_notas_fiscais INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY YEAR(DATA_VENDA);



SELECT VENDA_SABOR.SABOR , VENDA_SABOR.ANO , VENDA_SABOR.QUANTIDADE,
ROUND(VENDA_SABOR.QUANTIDADE/VENDA_TOTAL.QUANTIDADE * 100,2) AS PERCENTUAL_PARTICIPAÇÃO FROM
(SELECT TP.SABOR, YEAR(DATA_VENDA) AS ANO,SUM(INF.QUANTIDADE) AS QUANTIDADE 
FROM  tabela_de_produtos TP
INNER JOIN itens_notas_fiscais INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY SABOR ,YEAR(DATA_VENDA)) AS VENDA_SABOR
INNER JOIN
(SELECT  YEAR(DATA_VENDA) AS ANO,SUM(INF.QUANTIDADE) AS QUANTIDADE 
FROM  tabela_de_produtos TP
INNER JOIN itens_notas_fiscais INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY YEAR(DATA_VENDA)) AS VENDA_TOTAL
ON VENDA_SABOR.ANO = VENDA_TOTAL.ANO
ORDER BY  PERCENTUAL_PARTICIPAÇÃO DESC;


/*QUANTIDADE VENDIDA POR TAMANHO NO ANO DE 2016*/
SELECT TP.TAMANHO, YEAR(DATA_VENDA) AS ANO,SUM(INF.QUANTIDADE) AS QUANTIDADE 
FROM  tabela_de_produtos TP
INNER JOIN itens_notas_fiscais INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY TAMANHO ,YEAR(DATA_VENDA)
ORDER BY  QUANTIDADE DESC ;

SELECT VENDA_TAMANHO.TAMANHO , VENDA_TAMANHO.ANO , VENDA_TAMANHO.QUANTIDADE,
ROUND(VENDA_TAMANHO.QUANTIDADE/VENDA_TOTAL.QUANTIDADE * 100,2) AS PERCENTUAL_PARTICIPAÇÃO FROM
(SELECT TP.TAMANHO, YEAR(DATA_VENDA) AS ANO,SUM(INF.QUANTIDADE) AS QUANTIDADE 
FROM  tabela_de_produtos TP
INNER JOIN itens_notas_fiscais INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY TAMANHO ,YEAR(DATA_VENDA)) AS VENDA_TAMANHO
INNER JOIN
(SELECT  YEAR(DATA_VENDA) AS ANO,SUM(INF.QUANTIDADE) AS QUANTIDADE 
FROM  tabela_de_produtos TP
INNER JOIN itens_notas_fiscais INF
ON TP.CODIGO_DO_PRODUTO = INF.CODIGO_DO_PRODUTO
INNER JOIN notas_fiscais NF ON NF.NUMERO = INF.NUMERO
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY YEAR(DATA_VENDA)) AS VENDA_TOTAL
ON VENDA_TAMANHO.ANO = VENDA_TOTAL.ANO
ORDER BY  PERCENTUAL_PARTICIPAÇÃO DESC;


