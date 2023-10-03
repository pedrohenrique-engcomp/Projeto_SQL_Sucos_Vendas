CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `sucos_vendas`.`VW_MAIORES_EMBALAGENS` AS
    SELECT 
        `sucos_vendas`.`tabela_de_produtos`.`EMBALAGEM` AS `EMBALAGEM`,
        MAX(`sucos_vendas`.`tabela_de_produtos`.`PRECO_DE_LISTA`) AS `MAIOR_PRECO`
    FROM
        `sucos_vendas`.`tabela_de_produtos`
    GROUP BY `sucos_vendas`.`tabela_de_produtos`.`EMBALAGEM`