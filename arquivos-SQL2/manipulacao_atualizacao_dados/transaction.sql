USE sucos_vendas;
START TRANSACTION;

UPDATE VENDEDORES SET COMISSAO = COMISSAO * 1.15;

SELECT * FROM VENDEDORES;

ROLLBACK;

COMMIT;