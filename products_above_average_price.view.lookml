- view: products_above_average_price
  sql_table_name: |
    [Products Above Average Price]
  fields:

  - dimension: product_name
    sql: ${TABLE}.ProductName

  - dimension: unit_price
    sql: ${TABLE}.UnitPrice

  - measure: count
    type: count
    drill_fields: [product_name]

