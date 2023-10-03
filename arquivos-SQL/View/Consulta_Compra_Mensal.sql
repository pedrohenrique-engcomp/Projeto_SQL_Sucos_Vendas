CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `sucos_vendas`.`VW_COMPRAS_MENSAIS` AS
    SELECT 
        `X`.`NOME` AS `NOME`,
        `X`.`CPF` AS `CPF`,
        `X`.`MES_ANO` AS `MES_ANO`,
        `X`.`QUANTIDADE_VENDAS` AS `QUANTIDADE_VENDAS`,
        `X`.`QUANTIDADE_LIMITE` AS `QUANTIDADE_LIMITE`,
        (CASE
            WHEN (`X`.`QUANTIDADE_VENDAS` > `X`.`QUANTIDADE_LIMITE`) THEN 'INVÁLIDA'
            ELSE 'VÁLIDA'
        END) AS STATUS_VENDA
    FROM
        (SELECT 
            TC.NOME AS NOME,
                TC.CPF AS CPF,
                DATE_FORMAT(NF.DATA_VENDA, '%Y-%m') AS MES_ANO,
                SUM(INF.QUANTIDADE) AS QUANTIDADE_VENDAS,
                MAX(TC.VOLUME_DE_COMPRA) AS QUANTIDADE_LIMITE
        FROM
            ((sucos_vendas.notas_fiscais NF
        JOIN sucos_vendas.itens_notas_fiscais INF ON ((NF.NUMERO = INF.NUMERO)))
        JOIN sucos_vendas.tabela_de_clientes TC ON ((NF.CPF = TC.CPF)))
        GROUP BY TC.NOME , TC.CPF , DATE_FORMAT(NF.DATA_VENDA, '%Y-%m')) X