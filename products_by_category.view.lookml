- view: products_by_category
  sql_table_name: |
    [Products by Category]
  fields:

  - dimension: category_name
    sql: ${TABLE}.CategoryName

  - dimension: discontinued
    sql: ${TABLE}.Discontinued

  - dimension: product_name
    sql: ${TABLE}.ProductName

  - dimension: quantity_per_unit
    sql: ${TABLE}.QuantityPerUnit

  - dimension: units_in_stock
    type: number
    sql: ${TABLE}.UnitsInStock

  - measure: count
    type: count
    drill_fields: [category_name, product_name]

