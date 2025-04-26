-- Retrieve all products with their brand and category names
SELECT p.name AS product_name, b.name AS brand_name, c.name AS category_name
FROM product p
JOIN brand b ON p.brand_id = b.brand_id
JOIN product_category c ON p.category_id = c.category_id;

-- Retrieve all variations of a specific product
SELECT pv.variation_id, c.name AS color, s.name AS size, pv.price_adjustment, pv.stock_quantity
FROM product_variation pv
JOIN color c ON pv.color_id = c.color_id
JOIN size_option s ON pv.size_option_id = s.size_option_id
WHERE pv.product_id = 1;