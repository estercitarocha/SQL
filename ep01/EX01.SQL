--EX01: Quantos produtos temos da categoria 'artes'?

--SELECT COUNT(*) as qtde_itens 'AS' dá apelido para as coisa/tabelas / count(*)conta quantas linhas foram retornados 
--FROM tb_products
--WHERE product_category_name = 'artes'

SELECT 
count(*) as qtde_linhas,
COUNT(product_id) as qtde_produtos,
count(DISTINCT product_id) as qtde_produtos_distintos,
count(DISTINCT product_category_name) as qtde_categoria_distintas

FROM tb_products
WHERE product_category_name ='artes'
