-- Insert a new brand
INSERT INTO brand (name, description) VALUES ('Adidas', 'Sportswear and lifestyle brand');

-- Insert a new product
INSERT INTO product (name, brand_id, category_id, base_price, description)
VALUES ('Adidas Sneakers', 3, 1, 79.99, 'Comfortable sneakers for everyday use');