- view: category_sales_for_1997
  sql_table_name: |
    [Category Sales for 1997]
  fields:

  - dimension: category_name
    sql: ${TABLE}.CategoryName

  - dimension: category_sales
    sql: ${TABLE}.CategorySales

  - measure: count
    type: count
    drill_fields: [category_name]

