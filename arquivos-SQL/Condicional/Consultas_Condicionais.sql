
SELECT * FROM tabela_de_produtos where not (SABOR = 'Manga') AND TAMANHO = '470 ml';

SELECT * FROM tabela_de_produtos WHERE SABOR IN ('Manga','Laranja');

SELECT * FROM tabela_de_clientes WHERE CIDADE IN ('Rio de Janeiro','São Paulo')
AND IDADE >= 20;

SELECT * FROM tabela_de_clientes WHERE NOME LIKE '%Silva';

SELECT * FROM tabela_de_clientes WHERE CIDADE IN ('Rio de Janeiro','São Paulo')
AND IDADE >= 20;

SELECT * FROM tabela_de_clientes WHERE NOME LIKE '%Mattos%';

SELECT EMBALAGEM, TAMANHO FROM tabela_de_produtos;

SELECT DISTINCT EMBALAGEM, TAMANHO , SABOR FROM tabela_de_produtos;

SELECT DISTINCT BAIRRO FROM tabela_de_clientes WHERE CIDADE IN ('Rio de Janeiro');


SELECT * FROM tabela_de_produtos;

SELECT * FROM tabela_de_produtos LIMIT 2,3;

SELECT * FROM tabela_de_clientes  ORDER BY  NOME DESC; 

SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA;

SELECT * FROM tabela_de_produtos ORDER BY EMBALAGEM DESC, PRECO_DE_LISTA ASC;


