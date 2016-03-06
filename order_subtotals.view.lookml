- view: order_subtotals
  sql_table_name: |
    [Order Subtotals]
  fields:

  - dimension: order_id
    type: int
    # hidden: true
    sql: ${TABLE}.OrderID

  - dimension: subtotal
    sql: ${TABLE}.Subtotal

  - measure: count
    type: count
    drill_fields: [orders.order_id, orders.ship_name]

