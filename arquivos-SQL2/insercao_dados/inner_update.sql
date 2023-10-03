USE vendas_sucos;

SELECT * FROM sucos_vendas.tabela_de_vendedores;
SELECT * FROM VENDEDORES;
SELECT * FROM VENDEDORES A INNER JOIN sucos_vendas.tabela_de_vendedores B
 ON A.MATRICULA  = substring(B.MATRICULA,3,3) ;

UPDATE  VENDEDORES A INNER JOIN sucos_vendas.tabela_de_vendedores B
ON A.MATRICULA AND B.MATRICULA = substring(B.MATRICULA,3,3)
SET A.FERIAS = B.DE_FERIAS;
