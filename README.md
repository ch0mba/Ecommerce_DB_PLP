E-Commerce Database README

EDR DIAGRAM
https://github.com/ch0mba/Ecommerce_DB_PLP/blob/main/e_commerce_EDR_PLP.png





Overview
This repository contains the SQL scripts and documentation for designing and implementing a robust e-commerce database. The database is structured to support various features such as product management, variations (e.g., size and color), attributes (e.g., material, weight), and relationships between entities like brands, categories, and products.

Database Design
The database is designed using an Entity-Relationship Diagram (ERD) approach. Below are the key entities (tables) and their roles:

Core Entities
brand : Stores brand-related data (e.g., Nike, Apple).
product_category : Classifies products into categories (e.g., clothing, electronics).
product : Stores general product details (name, brand, base price, description).
product_image : Stores image URLs or file references for products.
color : Manages available color options for products.
size_category : Groups sizes into categories (e.g., clothing sizes, shoe sizes).
size_option : Lists specific sizes (e.g., S, M, L, 42).
attribute_category : Groups attributes into categories (e.g., physical, technical).
attribute_type : Defines types of attributes (e.g., text, number, boolean).
product_attribute : Stores custom attributes for products (e.g., material, weight).
product_variation : Links products to their variations (e.g., size, color).
product_item : Represents purchasable items with specific variations (e.g., SKU, stock quantity).


Features
Scalability :
Designed to handle large catalogs of products with multiple variations and attributes.
Supports indexing on frequently queried fields (e.g., product_id, sku).

Data Integrity :
Enforces constraints (NOT NULL, UNIQUE, CHECK) to ensure valid data.
Uses foreign keys to maintain relationships between tables.

Flexibility :
Supports dynamic addition of attributes, sizes, colors, and categories.
Allows for easy extension of the schema to accommodate new features.

Performance :
Optimized with cascade actions (ON DELETE CASCADE) to simplify data management.
Normalized schema minimizes redundancy and ensures consistency.

Installation
Prerequisites
MySQL or MariaDB installed on your system.
A MySQL-compatible client (e.g., MySQL Workbench, phpMyAdmin).
Steps
Clone the Repository :git@github.com:ch0mba/Ecommerce_DB_PLP.git
Download or clone this repository to your local machine.

Run the SQL Script :
Open the SQL script (e_commerce.sql) in your MySQL client.
Execute the script to create all tables.

Insert Sample Data :
Use the provided sample data insertion queries to populate the database with test data.

Verify the Setup :
Query the database to ensure all tables and relationships are functioning correctly.
Usage
Creating Records
You can insert records into the tables using standard SQL INSERT statements. For example:

insertsampledata.sql

Querying Data
Use SELECT statements to retrieve data from the database. For example:
querydata.sql

Schema Details
Table Relationships
Below is a summary of the relationships between tables:

brand → product : A brand can have multiple products (1:N).
product_category → product : A category can have multiple products (1:N).
product → product_image : A product can have multiple images (1:N).
product → product_variation : A product can have multiple variations (1:N).
product_variation → color : Each variation has one color (N:1).
product_variation → size_option : Each variation has one size (N:1).
product → product_attribute : A product can have multiple attributes (1:N).
product_variation → product_item : Each variation corresponds to a purchasable item (1:N).
Sample Data
Here’s an example of how the database might look with sample data:


GROUP Members:
Erick Chomba []
