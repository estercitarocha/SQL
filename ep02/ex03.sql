-- Faça uma query que apresente o tamanho médio, máximo e Minimo do nome do objeto por categoria, Considere os Objetos que tenham a descrição maior que 100.

SELECT product_category_name,

avg(product_name_lenght) tamanho_medio_nome,
max(product_name_lenght) tamanho_max_nome,
min
(product_name_lenght) tamanho_min_nome

FROM tb_products

WHERE product_description_lenght >=100

GROUP by product_category_name
