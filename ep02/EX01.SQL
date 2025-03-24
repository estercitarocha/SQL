-- fAÇA UMA QUERY QUE APRESENTE O TAMANHO MÉDIO, MÁXIMO E MÍNIMO DA DESCRIÇÃO DO OBJETO POR CATEGORIA. 

select product_category_name,
AVG(product_description_lenght) as tamanho_medio_descricao,

max(product_description_lenght) as tamanho_max_descricao,

min(product_description_lenght) as tamanho_min_descricao

FROM tb_products -- tabela de produtos

GROUP by product_category_name

limit 6