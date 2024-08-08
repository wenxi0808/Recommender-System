-- CREATE SCHEMA AIML_P1;

USE AIML_P1;

CREATE TABLE Gross_Margin (
    prod_category VARCHAR(255),
    profit_margin DECIMAL(5, 2)
);

INSERT INTO Gross_Margin (prod_category, profit_margin) VALUES 
('Bath & Beauty', 0.7),
('Gas Bar', 0.01),
('Skincare', 0.65),
('Cosmetic Treatments', 0.3),
('Sports', 0.15),
('Pet Food & Supplies', 0.3),
('Jewelery & Accessories', 0.6),
('3rd Party Gift Cards', 0.07),
('Baking', 0.25),
('Sweet', 0.4),
('Hot Beverages & Accessories', 0.3),
('Fresh Service Case', 0.3),
('Portraits', 0.6),
('Lottery - Electronic', 0.06),
('Rx BTC', 0.2),
('Confectionary - Seasonal', 0.3),
('Cosmetic Accessories', 0.5),
('Colour Cosmetics - Mass', 0.5),
('Deli Cheese', 0.35),
('Stationery', 0.35),
('Coupons', 0),
('Medicinal Products', 0.4),
('Spirits', 0.3),
('Salad Fixings', 0.6),
('Confectionary', 0.4),
('Milk & Eggs', 0.2),
('Fresh-Lamb/Veal/Sausage', 0.15),
('Snacks', 0.3),
('Toys', 0.25),
('Jewellery & Fashion', 0.99),
('Soft Goods (Textiles)', 0.3),
('Gourmet Foods', 0.35),
('Hardware/Automotive', 0.3),
('Rx', 0.2),
('Bulk Foods', 0.15),
('Movies', 0.25),
('Phones and Accessories', 0.3),
('Feminine Hygiene', 0.35),
('Beer', 0.3),
('Cold Beverages', 0.3),
('In-Store', 0.25),
('Canned', 0.15),
('Salad Bar', 0.7),
('Outdoor Living', 0.35),
('Meal Makers', 0.3),
('Supplies', 0.5),
('Commercial', 0.15),
('Condiments', 0.3),
('Electronics', 0.1),
('Cheese/Butter/Margarine', 0.25),
('Haircare', 0.4),
('Household', 0.3),
('Seasonal', 0.4),
('HMR', 0.3),
('Wine', 0.5),
('Frozen Boxed Meat', 0.2),
('Tobacco', 0.15),
('Digital Hardlines', 0.1),
('Cosmetic Fragrances', 0.5),
('Cards And Wrap', 0.6),
('Vegetables', 0.2),
('Floral', 0.3),
('Yogurt/Refrigerated Juice', 0.2),
('Kitchen Prep', 0.3),
('Reading', 0.3),
('Fresh Seafood', 0.15),
('Phone Cards', 0.1),
('Gaming', 0.3),
('Natural Foods', 0.4),
('Oralcare', 0.4),
('Nail', 0.6),
('Hard Goods', 0.25),
('Dollar Shop', 0.25),
('Deli Meat', 0.3),
('Fruit', 0.15),
('Fresh Beef', 0.15),
('Community Room / Cooking School', 0.5),
('Lottery - Scratch', 0.06),
('Household Cleaning Needs', 0.4),
('Photo Image', 0.6),
('Restaurant Disposable', 0.15),
('Dispensing', 0.3),
('Processed', 0.4),
('Garden', 0.15),
('Fresh-Pork', 0.15),
('Frozen Seafood', 0.4),
('Grooming', 0.35),
('Fresh-Poultry', 0.3),
('Breakfast', 0.75),
('Home Decor', 0.4),
('Savory', 0.3),
('Optical', 0.7),
('Household Paper Products', 0.085),
('Wellness', 0.2),
('Baby', 0.15);

SET SQL_SAFE_UPDATES = 0;
SET GLOBAL LOCAL_INFILE=1;

CREATE TABLE `AIML_P1`.`prod_sales` (
	`prod_id` int, 
	`prod_category` text, 
    `total_sales` int
);

LOAD DATA LOCAL INFILE 'C:/Users/jayso/Desktop/Emory/Spring 2024/AI & ML at Scale/Project 1/prod_sales.csv'
INTO TABLE `prod_sales`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

CREATE TABLE `AIML_P1`.`prod_cate_sales` (
	`prod_category` text, 
    `total_sales` int
);

LOAD DATA LOCAL INFILE 'C:/Users/jayso/Desktop/Emory/Spring 2024/AI & ML at Scale/Project 1/prod_cate_sales.csv'
INTO TABLE `prod_cate_sales`
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n'
IGNORE 1 LINES;

# What are the product groups with the best profits?
SELECT prod_id, p.prod_category, total_sales, profit_margin, (total_sales * profit_margin) AS profit
FROM prod_sales p JOIN gross_margin g ON p.prod_category = g.prod_category
ORDER BY profit DESC;

# What are the products and product groups with the best profits?
SELECT pc.prod_category, total_sales, profit_margin, (total_sales * profit_margin) AS profit
FROM prod_cate_sales pc JOIN gross_margin g ON pc.prod_category = g.prod_category
ORDER BY profit DESC;

