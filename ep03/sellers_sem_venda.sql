-- quais são os sellers que não venderam em DEZ/2017??
--  Considere vendas validas(entregue)

SELECT t2.seller_id,
       t3.seller_state

from tb_orders as t1

LEFT join tb_order_items as t2
on t1.order_id = t2.order_id

left join tb_sellers as t3 
on t3.seller_id = t2.seller_id

WHERE t1.order_approved_at < '2018-01-01'
and t1.order_status = 'delivered'

group by t2.seller_id, t3.seller_state

Having max(case when strftime('%y-%m',order_approved_at) = '2017-12' then 1
        else 0
        end) = 0