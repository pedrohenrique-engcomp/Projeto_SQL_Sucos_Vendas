

SELECT * FROM tabela_de_clientes;

SELECT ESTADO,SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL FROM tabela_de_clientes GROUP BY ESTADO;

SELECT EMBALAGEM, PRECO_DE_LISTA FROM tabela_de_produtos;

SELECT EMBALAGEM, SUM(PRECO_DE_LISTA) AS PREÇO_TOTAL FROM tabela_de_produtos GROUP BY EMBALAGEM;

SELECT BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes GROUP BY  BAIRRO;

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) AS LIMITE FROM tabela_de_clientes GROUP BY ESTADO, BAIRRO ORDER BY ESTADO;

SELECT MAX(QUANTIDADE) AS QUANTIDADE_MÁXIMA ,CODIGO_DO_PRODUTO FROM itens_notas_fiscais WHERE CODIGO_DO_PRODUTO = '1101035' ;

SELECT COUNT(*) FROM itens_notas_fiscais WHERE codigo_do_produto = '1101035' AND QUANTIDADE = 99;