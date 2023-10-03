CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `sucos_vendas`.VW_COMPRAS_INVÁLIDAS_MENSAIS AS
    SELECT 
        sucos_vendas.X.NOME AS NOME,
        sucos_vendas.X.CPF AS CPF,
        sucos_vendas.X.MES_ANO AS MES_ANO,
        sucos_vendas.X.QUANTIDADE_VENDAS AS QUANTIDADE_VENDAS,
        sucos_vendas.X.QUANTIDADE_LIMITE AS QUANTIDADE_LIMITE,
        sucos_vendas.X.STATUS_VENDA AS STATUS_VENDA,
        ROUND(((1 - (sucos_vendas.X.QUANTIDADE_VENDAS / sucos_vendas.X.QUANTIDADE_LIMITE)) * 100),
                2) AS PERCENTUAL_DE_INVALIDEZ
    FROM
        sucos_vendas.VW_COMPRAS_MENSAIS X
    WHERE
        (sucos_vendas.X.STATUS_VENDA = 'INVÁLIDA')