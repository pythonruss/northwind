- view: order_details_extended
  sql_table_name: |
    [Order Details Extended]
  fields:

  - dimension: discount
    type: number
    sql: ${TABLE}.Discount

  - dimension: extended_price
    sql: ${TABLE}.ExtendedPrice

  - dimension: order_id
    type: int
    # hidden: true
    sql: ${TABLE}.OrderID

  - dimension: product_id
    type: int
    # hidden: true
    sql: ${TABLE}.ProductID

  - dimension: product_name
    sql: ${TABLE}.ProductName

  - dimension: quantity
    type: number
    sql: ${TABLE}.Quantity

  - dimension: unit_price
    sql: ${TABLE}.UnitPrice

  - measure: count
    type: count
    drill_fields: [product_name, orders.order_id, orders.ship_name, products.product_id, products.product_name]

