/* 
1. you have two tables: product and supplier
product tables columns : product_id, product_name, supplier_id, price
supplier tables columns : supplier_id, supplier_name, country

 */

-- create a  supplier table
CREATE TABLE supplier (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL

)

-- create a product table
CREATE TABLE product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    supplier_id INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (supplier_id) REFERENCES supplier(supplier_id)
)

-- Insert sample data into supplier table (50 or more)
INSERT INTO supplier (supplier_id, supplier_name, country) VALUES
(1, 'Supplier1', 'USA'),
(2, 'Supplier2', 'Canada'),
(3, 'Supplier3', 'Mexico'),
(4, 'Supplier4', 'USA'),
(5, 'Supplier5', 'Canada'),
(6, 'Supplier6', 'Mexico'),
(7, 'Supplier7', 'USA'),
(8, 'Supplier8', 'Canada'),
(9, 'Supplier9', 'Mexico'),
(10, 'Supplier10', 'USA'),
(11, 'Supplier11', 'Canada'),
(12, 'Supplier12', 'Mexico'),
(13, 'Supplier13', 'USA'),
(14, 'Supplier14', 'Canada'),
(15, 'Supplier15', 'Mexico'),
(16, 'Supplier16', 'USA'),
(17, 'Supplier17', 'Canada'),
(18, 'Supplier18', 'Mexico'),
(19, 'Supplier19', 'USA'),
(20, 'Supplier20', 'Canada'),
(21, 'Supplier21', 'Mexico'),
(22, 'Supplier22', 'USA'),
(23, 'Supplier23', 'Canada'),
(24, 'Supplier24', 'Mexico'),
(25, 'Supplier25', 'USA'),
(26, 'Supplier26', 'Canada'),
(27, 'Supplier27', 'Mexico'),
(28, 'Supplier28', 'USA'),
(29, 'Supplier29', 'Canada'),
(30, 'Supplier30', 'Mexico'),
(31, 'Supplier31', 'USA'),
(32, 'Supplier32', 'Canada'),
(33, 'Supplier33', 'Mexico'),
(34, 'Supplier34', 'USA'),
(35, 'Supplier35', 'Canada'),
(36, 'Supplier36', 'Mexico'),
(37, 'Supplier37', 'USA'),
(38, 'Supplier38', 'Canada'),
(39, 'Supplier39', 'Mexico'),
(40, 'Supplier40', 'USA'),
(41, 'Supplier41', 'Canada'),
(42, 'Supplier42', 'Mexico'),
(43, 'Supplier43', 'USA'),
(44, 'Supplier44', 'Canada'),
(45, 'Supplier45', 'Mexico'),
(46, 'Supplier46', 'USA'),
(47, 'Supplier47', 'Canada'),
(48, 'Supplier48', 'Mexico'),
(49, 'Supplier49', 'USA'),
(50, 'Supplier50', 'Canada'),
(51, 'Supplier51', 'Mexico'),
(52, 'Supplier52', 'USA'),
(53, 'Supplier53', 'Canada'),
(54, 'Supplier54', 'Mexico'),
(55, 'Supplier55', 'USA'),
(56, 'Supplier56', 'Canada'),
(57, 'Supplier57', 'Mexico'),
(58, 'Supplier58', 'USA'),
(59, 'Supplier59', 'Canada'),
(60, 'Supplier60', 'Mexico'),
(61, 'Supplier61', 'USA'),
(62, 'Supplier62', 'Canada'),
(63, 'Supplier63', 'Mexico'),
(64, 'Supplier64', 'USA'),
(65, 'Supplier65', 'Canada');



-- Insert sample data into product table with 50 rows
INSERT INTO product (product_id, product_name, supplier_id, price)
VALUES
    (1, 'Product1', 1, 10.99),
    (2, 'Product2', 2, 9.99),
    (3, 'Product3', 3, 8.99),
    (4, 'Product4', 4, 7.99),
    (5, 'Product5', 5, 6.99),
    (6, 'Product6', 6, 5.99),
    (7, 'Product7', 7, 4.99),
    (8, 'Product8', 8, 3.99),
    (9, 'Product9', 9, 2.99),
    (10, 'Product10', 10, 1.99),
    (11, 'Product11', 11, 10.99),
    (12, 'Product12', 12, 9.99),
    (13, 'Product13', 13, 8.99),
    (14, 'Product14', 14, 7.99),
    (15, 'Product15', 15, 6.99),
    (16, 'Product16', 16, 5.99),
    (17, 'Product17', 17, 4.99),
    (18, 'Product18', 18, 3.99),
    (19, 'Product19', 19, 2.99),
    (20, 'Product20', 20, 1.99),
    (21, 'Product21', 21, 10.99),
    (22, 'Product22', 22, 9.99),
    (23, 'Product23', 23, 8.99),
    (24, 'Product24', 24, 7.99),
    (25, 'Product25', 25, 6.99),
    (26, 'Product26', 26, 5.99),
    (27, 'Product27', 27, 4.99),
    (28, 'Product28', 28, 3.99),
    (29, 'Product29', 29, 2.99),
    (30, 'Product30', 30, 1.99),
    (31, 'Product31', 31, 10.99),
    (32, 'Product32', 32, 9.99),
    (33, 'Product33', 33, 8.99),
    (34, 'Product34', 34, 7.99),
    (35, 'Product35', 35, 6.99),
    (36, 'Product36', 36, 5.99),
    (37, 'Product37', 37, 4.99),
    (38, 'Product38', 38, 3.99),
    (39, 'Product39', 39, 2.99),
    (40, 'Product40', 40, 1.99),
    (41, 'Product41', 41, 10.99),
    (42, 'Product42', 42, 9.99),
    (43, 'Product43', 43, 8.99),
    (44, 'Product44', 44, 7.99),
    (45, 'Product45', 45, 6.99),
    (46, 'Product46', 46, 5.99),
    (47, 'Product47', 47, 4.99),
    (48, 'Product48', 48, 3.99),
    (49, 'Product49', 49, 2.99),
    (50, 'Product50', 50, 1.99)

-- write an SQL query to find name of the product with highest price in each country. return the product_name, price and country
SELECT 
    p.product_name,
    p.price,
    s.country
FROM 
    product p
JOIN 
    supplier s ON p.supplier_id = s.supplier_id
WHERE 
    (p.price) IN (
        SELECT MAX(price) 
        FROM product p2 
        JOIN supplier s2 ON p2.supplier_id = s2.supplier_id
        WHERE s2.country = s.country
        GROUP BY s2.country
    );


-- using window function and gropu by
WITH ranked_products AS (
    SELECT p.product_name, p.price, s.country
    , RoW_NUMBER() OVER (PARTITION BY s.country ORDER BY p.price DESC) AS rank
    FROM product AS p
    JOIN supplier AS s ON p.supplier_id = s.supplier_id
)
SELECT product_name, price, country
FROM ranked_products
WHERE rank = 1;
