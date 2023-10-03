
SELECT CONCAT("SQL ", "Tutorial ", "is ", "fun!") AS ConcatenatedString; 

SELECT LTRIM("     SQL Tutorial") AS LeftTrimmedString;

SELECT RTRIM("SQL Tutorial     ") AS RightTrimmedString;

SELECT TRIM('    SQL Tutorial    ') AS TrimmedString;

SELECT LCASE("SQL Tutorial is FUN!");

SELECT LOWER("SQL Tutorial is FUN!");

SELECT UCASE("SQL Tutorial is FUN!");

SELECT SUBSTRING("SQL Tutorial", 5, 3) AS ExtractString;

SELECT LENGTH("SQL Tutorial") AS LengthOfString;

SELECT LTRIM('    OLÁ');

SELECT CONCAT(NOME, ' (', CPF, ') ') AS RESULTADO FROM tabela_de_clientes;

SELECT CONCAT(NOME, '  ', ESTADO , '  ' , CIDADE ,'  ', BAIRRO ,'  ' , ENDERECO_1) AS RESULTADO FROM tabela_de_clientes;