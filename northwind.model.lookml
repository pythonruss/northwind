- connection: northwind

- scoping: true                  # for backward compatibility
- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: mint

# - explore: sql_runner_query
# - explore: alphabetical_list_of_products
#   joins:
#     - join: products
#       foreign_key: product_id
# 
#     - join: suppliers
#       foreign_key: supplier_id
# 
# 
# - explore: categories
#   cancel_grouping_fields: [categories.picture]
# 
# - explore: category_sales_for_1997
# 
# - explore: contacts
# 
# - explore: current_product_list
#   joins:
#     - join: products
#       foreign_key: product_id
# 
#     - join: suppliers
#       foreign_key: products.supplier_id
# 
# 
# - explore: customer_and_suppliers_by_city
# 
# - explore: customer_customer_demo
#   joins:
#     - join: customers
#       foreign_key: customer_id
# 
# 
# - explore: customer_demographics
# 
# - explore: customers
# 
# - explore: employee_territories
#   joins:
#     - join: employees
#       foreign_key: employee_id
# 
# 
# - explore: employees
# 
# - explore: invoices
#   joins:
#     - join: customers
#       foreign_key: customer_id
# 
#     - join: orders
#       foreign_key: order_id
# 
#     - join: products
#       foreign_key: product_id
# 
#     - join: employees
#       foreign_key: orders.employee_id
# 
#     - join: suppliers
#       foreign_key: products.supplier_id
# 
# 
# - explore: order_details
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: products
#       foreign_key: product_id
# 
#     - join: customers
#       foreign_key: orders.customer_id
# 
#     - join: employees
#       foreign_key: orders.employee_id
# 
#     - join: suppliers
#       foreign_key: products.supplier_id
# 
# 
# - explore: order_details_extended
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: products
#       foreign_key: product_id
# 
#     - join: customers
#       foreign_key: orders.customer_id
# 
#     - join: employees
#       foreign_key: orders.employee_id
# 
#     - join: suppliers
#       foreign_key: products.supplier_id
# 
# 
# - explore: order_subtotals
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: customers
#       foreign_key: orders.customer_id
# 
#     - join: employees
#       foreign_key: orders.employee_id
# 
# 
# - explore: orders
#   joins:
#     - join: customers
#       foreign_key: customer_id
# 
#     - join: employees
#       foreign_key: employee_id
# 
# 
# - explore: orders_qry
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: customers
#       foreign_key: customer_id
# 
#     - join: employees
#       foreign_key: employee_id
# 
# 
# - explore: product_sales_for_1997
# 
# - explore: products
#   joins:
#     - join: suppliers
#       foreign_key: supplier_id
# 
# 
# - explore: products_above_average_price
# 
# - explore: products_by_category
# 
# - explore: quarterly_orders
#   joins:
#     - join: customers
#       foreign_key: customer_id
# 
# 
# - explore: region
# 
# - explore: sales_by_category
# 
# - explore: sales_totals_by_amount
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: customers
#       foreign_key: orders.customer_id
# 
#     - join: employees
#       foreign_key: orders.employee_id
# 
# 
# - explore: shippers
# 
# - explore: summary_of_sales_by_quarter
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: customers
#       foreign_key: orders.customer_id
# 
#     - join: employees
#       foreign_key: orders.employee_id
# 
# 
# - explore: summary_of_sales_by_year
#   joins:
#     - join: orders
#       foreign_key: order_id
# 
#     - join: customers
#       foreign_key: orders.customer_id
# 
#     - join: employees
#       foreign_key: orders.employee_id
# 
# 
# - explore: suppliers
# 
# - explore: sysdiagrams
# 
# - explore: territories
#   joins:
#     - join: region
#       foreign_key: region_id


