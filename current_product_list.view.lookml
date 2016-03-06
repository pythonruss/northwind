- view: current_product_list
  sql_table_name: |
    [Current Product List]
  fields:

  - dimension: product_id
    type: int
    # hidden: true
    sql: ${TABLE}.ProductID

  - dimension: product_name
    sql: ${TABLE}.ProductName

  - measure: count
    type: count
    drill_fields: [product_name, products.product_id, products.product_name]

