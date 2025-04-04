-- Faça uma query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria. Considere apenas os objetos que tenham a descrição maior que 100.
--Exiba apenas as categorias com tamanho médio de descrição do objeto maior do que 50


SELECT product_category_name,
    avg(product_name_lenght) as tamanho_avg_nome,
max(product_name_lenght) as tamanho_max_nome,
min(product_name_lenght) as tamanho_min_nome

FROM tb_products

where product_description_lenght > 100

GROUP by product_category_name

having AVG(product_description_lenght) > 500

order by min (product_name_lenght)desc,
MAX(product_name_lenght)ASC
