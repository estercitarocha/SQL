-- -- Quantos produtos de 'beleza e saude ' com menos de 1 litro?


SELECT count (*) as qtde_linhas

FROM tb_products

where product_length_cm * product_height_cm * product_width_cm / 1000 <1
and product_category_name = 'beleza_saude'