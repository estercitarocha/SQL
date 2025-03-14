select product_id,
t1.product_category_name,
t1.product_photos_qty

from tb_products 

WHERE (product_category_name = 'bebes'
AND product_photos_qty > 1) or (product_category_name = 'perfumaria' and product_photos_qty > 5)
