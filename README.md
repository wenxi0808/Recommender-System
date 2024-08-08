# Recommender-System
Background

ACSE Supermarket, a company that sells everything, has over 40 stores in North America and sells over 100 thousand products in over 100 categories.  ACSE customers can opt to join the ACSE Rewards program to avail of weekly sales and promotions.  ACSE has determined that they can use a recommender system to help inform decisions such as products to carry in stores, shelf space allocation to products, products to promote to customers, reorder level of products, order quantity of products, etc. 

Problem

Your analytics consulting firm is being considered by ACSE (the client) to build a recommender system in support of various usage in supply chain and logistics, store operations, supplier relations, pricing, promotions and marketing.  While the details of the business problem is still being defined, you have started to receive data from the client.  You have three weeks to analyze and understand the data, including text mining the descriptions of the products, and report back initial insights to the client.  In order to be selected as the sole-developer of the recommender system, your team needs to demonstrate that you know the data very well, i.e., you need to show the client that you know the profiles of their stores, products and customers better than they do and are ready to take on the task of developing the recommender system. 

From the client’s point of view, they need to be confident that you know the answers to the following key questions:

Who are the best customers in terms of revenues, profits, transactions/store visits, number of products, etc.?

What are the products and product groups with the best volumes, revenues, profits, transactions, customers, etc.?

Which stores rank the highest in volumes, revenues, profits, transactions, customers, etc.?

Are there interesting groupings of customers, e.g., most valuable (buy everything at any price) or cherry-pickers (buy mostly on promotions), defined by certain categories (buy baby products or never buy milk), etc.?

Other than product categories and sub-categories, are there other product groupings, e.g., Key Value Items (KVI) and Key Value Categories (KVC), traffic drivers, always promoted versus seldom/never promoted, etc.?

Are there natural groupings of stores, e.g., stores frequented by cherry-pickers versus stores visited by most loyal customers?

Are there problems with the data, e.g., missing data, problems with product descriptions, non-products, non-customers (who "buy" too much), stores with two few transactions, etc.? How did you address these problems?

Available Data
There are two tables in the database:

The transactions table contains transaction history in 2017, 2018, 2019 and 2020 for over 9 million customers

cust_id – Customer ID: Format of 1######### represents a ACSE Rewards member

store_id – Store ID

prod_id – Product ID

trans_id – Transaction ID

trans_dt – Transaction Date

sales_qty – Quantity/units of the product in the transaction

sales_wgt – Weight of the product in the transaction if sold by weight

sales_amt – Sales amount for the product before discounts in the transaction

The products table contains the product to subcategory and category mapping and descriptions for over 100,000 products

prod_id – Product ID

prod_desc – Product description

prod_section – Product section description

prod_category – Product category description

prod_subcategory – Product subcategory description

prod_type – Product type description

prod_mfc_brand_cd – Code representing the Product manufacturer/brand

prod_unit_qty_count  – Count per unit quantity of the Product

prod_count_uom – Unit of measure (UOM) for a count of the Product

prod_uom_value – Value UOM per count of the Product

Recommender System

Your analytics consulting group has been tasked by ACSE to develop a recommender system for personalized promotions. Despite ongoing negotiations with suppliers, you have received the necessary data from the client. You have a three-week window to analyze the data and support the proposed marketing campaigns for May 2024. The campaigns below are assigned according to project group number, e.g., Group #6 works on the Coca-Cola campaign.

Kellogg: Target customers purchasing General Mills products for a personalized promotion.

Kimberly-Clark: Create a promotion targeting customers currently buying competing baby care brands to promote Huggies.

Molson Coors: Determine if targeting Budweiser customers can increase Molson product sales.

Nestle: Devise a strategy to promote confectionery/chocolate products and expand market share in the category.

Unilever: Identify specific Dove products for promotion to increase overall brand sales.

Coca-Cola: Plan a personalized campaign targeting customers purchasing from other carbonated soft drink (CSD) brands.

For each campaign, ACSE prohibits targeting customers buying competing ACSE branded products. Your task includes providing a personalized promotion plan for each campaign, specifying the targeted customers and the promoted product.
