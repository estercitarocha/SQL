SELECT seller_state,

    COUNT(*) as qtde_sellers

FROM tb_sellers
--FILTRO PRÉ AGG(AGREGAÇÃO)
where seller_state in ('SP', 'RJ', 'PR', 'AC')
--AGREGAÇÃO
GROUP by seller_state
--FILTRO P´S AGREGAÇÃO
HAVING COUNT(*) >10 -- REMOVE ESTADOS COM MENOS DE 10 SELLERS