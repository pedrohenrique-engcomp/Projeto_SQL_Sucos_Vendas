
USE vendas_sucos;

INSERT INTO PRODUTOS (CODIGO,DESCRITOR, SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
VALUES ('1040107', 'Light - 350 ml - Melância', 'Melância','350 ml','Lata', 4.56);

SELECT * FROM PRODUTOS;

INSERT INTO PRODUTOS (CODIGO,DESCRITOR, SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
VALUES ('1040108', 'Light - 350 ml - Graviola', 'Graviola','350 ml','Lata', 4.00);


INSERT INTO PRODUTOS (CODIGO,DESCRITOR, SABOR,TAMANHO,EMBALAGEM,PRECO_LISTA)
VALUES ('1040109', 'Light - 350 ml - Açai', 'Açai','350 ml','Lata', 5.60);
SELECT * FROM PRODUTOS;


INSERT INTO CLIENTES (CPF,NOME, ENDERECO,BAIRRO,CIDADE,ESTADO,CEP,DATA_NASCIMENTO,IDADE,SEXO,LIMITE_CREDITO,VOLUME_COMPRA,PRIMEIRA_COMPRA)
VALUES('1471156710','Érica Carvalho','R. Iriquitia','Jardins','São Paulo','SP','80012212','1990-09-01',27,'F',170000,24500,0),
      ('19290992743','Fernando Cavalcante','R. Dois de Fevereiro','Água Santa','Rio de Janeiro','RJ','22000000','2000-02-12',18,'M',100000,20000,1),
      ('2600586709','César Teixeira','Rua Conde de Bonfim','Tijuca','Rio de Janeiro','RJ','22020001','2000-03-12',18,'M',120000,22000,0);

SELECT * FROM CLIENTES;
