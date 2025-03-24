--Lista das categorias por ordem alfabética

SELECT
DISTINCT case when product_category_name is  null then 'outros'

    when product_category_name = 'alimentos'
    or product_category_name = 'alimentos_bebidas' then 'alimentos'

    when product_category_name in ('artes', 'artes_e_artesanato') then 'artes'

    when product_category_name like '%artigos%' then 'artigos'

        else product_category_name
        end as categoria_fillna

FROM tb_products

order by categoria_fillna