

SELECT CPF, COUNT(*) FROM notas_fiscais GROUP BY CPF;

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
INNER  JOIN notas_fiscais B ON A.CPF = B.CPF;

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM tabela_de_clientes A
LEFT JOIN notas_fiscais B ON A.CPF = B.CPF
WHERE B.CPF IS NULL;

SELECT DISTINCT A.CPF, A.NOME, B.CPF FROM notas_fiscais B
RIGHT JOIN tabela_de_clientes A ON A.CPF = B.CPF
WHERE A.CPF IS NULL;

SELECT tabela_de_vendedores.BAIRRO, tabela_de_vendedores.NOME
,tabela_de_vendedores.DE_FERIAS ,tabela_de_clientes.BAIRRO ,
tabela_de_clientes.NOME  FROM tabela_de_vendedores INNER JOIN
tabela_de_clientes ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;

SELECT tabela_de_vendedores.BAIRRO, tabela_de_vendedores.NOME
,tabela_de_vendedores.DE_FERIAS ,tabela_de_clientes.BAIRRO ,
tabela_de_clientes.NOME  FROM tabela_de_vendedores FULL JOIN
tabela_de_clientes ON tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;


