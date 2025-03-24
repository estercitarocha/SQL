-- Faça uma query que apresente o tamanho médio, maximo e minimo do nome do objeto por categoria 

select 	product_category_name,
AVG(product_name_lenght)as tamanho_avg_nome,
MAX(product_name_lenght)as tamanho_max_nome,
MIN(product_name_lenght)as tamanho_min_nome


from tb_products

GROUP by product_category_name