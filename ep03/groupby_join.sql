--QUAL A RECEITA DE CADA CATEGORIA DE PRODUTO? E O TOTAL DE VENDAS EM UNIDADES E EM PEDIDOS?


select 
    t2.product_category_name,
    sum (t1.price) as receita,
    COUNT(*) as total_vendidos,
    COUNT(DISTINCT t1.order_id) as qtde_pedidos,
    count(*) / cast ( COUNT(distinct t1.order_id)as float) as avg_item_por_pedido

from tb_order_items as t1

left join tb_products as t2 
on t1.product_id = t2.product_id

group by t2.product_category_name

order by count(*) / CAST (COUNT(DISTINCT t1.order_id) as float) DESC


limit 10