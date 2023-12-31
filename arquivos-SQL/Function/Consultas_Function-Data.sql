SELECT ADDDATE("2017-06-15", INTERVAL 10 DAY);

SELECT ADDTIME("2017-06-15 09:34:21", "2");

SELECT CURDATE();

SELECT CURRENT_TIMESTAMP();

SELECT DATEDIFF("2017-06-25", "2017-06-15");

SELECT DAYNAME("2017-06-15");
SELECT MONTHNAME("2017-06-15");

SELECT DAY("2017-06-15");
SELECT MONTH("2017-06-15");

SELECT DISTINCT DATA_VENDA FROM notas_fiscais;

SELECT DISTINCT DATA_VENDA,
DAYNAME(DATA_VENDA) AS DIA, MONTHNAME(DATA_VENDA) AS MES, YEAR(DATA_VENDA) AS ANO FROM notas_fiscais;

SELECT DISTINCT NOME,
IDADE  FROM tabela_de_clientes;

SELECT NOME, TIMESTAMPDIFF (YEAR, DATA_DE_NASCIMENTO, CURDATE()) AS    IDADE
FROM  tabela_de_clientes