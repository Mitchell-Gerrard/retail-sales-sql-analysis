# Retail Sales Analysis

## Project Overview

This project uses SQL to explore a fictional retail sales dataset and understand the store's sales performance, product performance, and customer behaviour.

The aim was to practise manipulating and analysing data with SQL, using queries to answer business questions and identify useful patterns without needing a more complex programming language.

## Tools Used

- **SQL** — data querying, aggregation, filtering, and analysis
- **SQLite** — database management
- **Visual Studio Code** — writing and running SQL queries

## Dataset

The dataset contains four tables:

- `customers` — customer names and cities
- `products` — product categories, selling prices, and costs
- `orders` — order dates and statuses
- `order_items` — products and quantities included in each order

The dataset contains six products across four categories: Office, Electronics, Stationery, and Lifestyle.

There are also six customers across five cities: London, Manchester, Bristol, Leeds, and Southampton.

The dataset contains 12 orders, with the following statuses:

| Order Status | Number of Orders |
|---|---:|
| Completed | 10 |
| Cancelled | 1 |
| Returned | 1 |

All orders reference existing customers, and all order items reference existing products and orders.

## Sales Performance

The total revenue from completed orders was **812 currency units**, across **40 units sold**. March 2025 had the highest monthly revenue, at **271 currency units**.

March also had the highest estimated gross profit, at **161.50 currency units**.

The average value of a completed order was **40.60 currency units**.

These results provide a basic overview of sales performance and show how revenue and profit can be compared across different time periods.

## Product Performance

### Best-Selling Products

Looking at the five products with the highest unit sales, notebooks were the most popular product.

| Product Name | Total Units Sold |
|---|---:|
| Notebook | 18 |
| Wireless Mouse | 6 |
| Water Bottle | 4 |
| Laptop Stand | 4 |
| Keyboard | 4 |

Notebooks sold considerably more units than the other products. Their lower price may make them an accessible purchase, although this dataset does not establish why customers prefer them.

### Revenue by Product Category

Electronics generated the highest category revenue, at **390 currency units**. This may be explained by the higher selling prices of products such as keyboards, compared with lower-priced items such as notebooks.

### Profit and Profit Margin

The keyboard generated the highest total product profit, at **128 currency units** in the reported analysis.

To understand the difference between products, I also compared profit margin percentages and profit per unit.

| Product Name | Profit Margin Percentage |
|---|---:|
| Notebook | 70.0% |
| Water Bottle | 66.7% |
| Wireless Mouse | 60.0% |
| Desk Lamp | 60.0% |
| Laptop Stand | 57.1% |

The notebook had the highest profit margin percentage. However, a higher margin percentage does not necessarily mean a product generates the most profit overall.

For example, the keyboard has a higher profit per unit because of the difference between its selling price and cost price.

| Product Name | Profit per Unit (Currency Units) |
|---|---:|
| Keyboard | 32.00 |
| Laptop Stand | 20.00 |
| Desk Lamp | 18.00 |
| Wireless Mouse | 15.00 |
| Water Bottle | 12.00 |

Comparing these measures helps show the difference between how much profit a product makes per sale and how much profit it generates across all sales.

*Note: Profit figures should be interpreted as estimated gross profit based on product costs, rather than net profit after operating expenses.*

## Customer Behaviour

### Highest-Spending Customers

Looking at the five highest-spending customers, Sam Wilson had the highest total spend, followed closely by Alex Smith. Although there are six customers in the dataset, the sixth customer, Jordan Taylor, only placed an order that was subsequently returned. As returned orders are excluded from this spending analysis, Jordan does not appear in the table

| Customer Name | Total Spend (Currency Units) |
|---|---:|
| Sam Wilson | 215.00 |
| Alex Smith | 206.00 |
| Taylor Jones | 181.00 |
| Jamie Brown | 155.00 |
| Morgan Lee | 55.00 |

There is a substantial difference between the highest and fifth-highest spenders. This highlights how customer spending can vary, even within a small dataset.

### Repeat Customers

I also examined how often customers placed orders. Alex Smith had the highest number of orders, with three, while several other customers placed repeat orders.

This helps identify returning customers, although the small dataset is not large enough to establish long-term customer behaviour.

### Completed Orders by City

| City | Completed Orders |
|---|---:|
| London | 3 |
| Southampton | 2 |
| Manchester | 2 |
| Bristol | 2 |
| Leeds | 1 |

London had the highest number of completed orders, while Southampton, Manchester, and Bristol were joint second.

This is an interesting result because Southampton had the same number of completed orders as the larger cities in this dataset. However, the sample is too small to draw wider conclusions about city populations or customer demand.

## Conclusions

This project allowed me to practise using SQL to explore a retail dataset and answer questions about sales, products, and customers.

I used queries to aggregate sales, compare product performance, calculate profit measures, and examine customer ordering patterns.

The analysis showed that notebooks had the highest unit sales, Electronics generated the highest category revenue, and Sam Wilson had the highest reported total spend.

The project also helped me understand the importance of choosing the right measure. Revenue, profit per unit, total profit, and profit margin percentage each provide a different view of product performance.

## Limitations

- The dataset is small and fictional, so the results are illustrative rather than representative of a real retailer.
- The data covers a limited period and cannot establish long-term sales trends.
- Profit calculations use product costs only and do not include other business expenses.
- The reasons behind customer purchasing decisions cannot be confirmed from this dataset alone.

## How to Run

1. Clone or download this repository.
2. Open the project in Visual Studio Code.
3. Open the SQLite database using a SQLite extension.
4. Run `schema.sql` to create and populate the tables in a fresh database.
5. Run the SQL scripts in the `queries` folder to reproduce the analysis.

The analysis uses SQLite, so no separate database server is required.