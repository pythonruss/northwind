- view: sales_by_category
  sql_table_name: |
    [Sales by Category]
  fields:

  - dimension: category_id
    type: int
    sql: ${TABLE}.CategoryID

  - dimension: category_name
    sql: ${TABLE}.CategoryName

  - dimension: product_name
    sql: ${TABLE}.ProductName

  - dimension: product_sales
    sql: ${TABLE}.ProductSales

  - measure: count
    type: count
    drill_fields: [category_name, product_name]

