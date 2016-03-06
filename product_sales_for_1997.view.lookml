- view: product_sales_for_1997
  sql_table_name: |
    [Product Sales for 1997]
  fields:

  - dimension: category_name
    sql: ${TABLE}.CategoryName

  - dimension: product_name
    sql: ${TABLE}.ProductName

  - dimension: product_sales
    sql: ${TABLE}.ProductSales

  - measure: count
    type: count
    drill_fields: [category_name, product_name]

