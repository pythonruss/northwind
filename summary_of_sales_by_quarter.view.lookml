- view: summary_of_sales_by_quarter
  sql_table_name: |
    [Summary of Sales by Quarter]
  fields:

  - dimension: order_id
    type: int
    # hidden: true
    sql: ${TABLE}.OrderID

  - dimension_group: shipped
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ShippedDate

  - dimension: subtotal
    sql: ${TABLE}.Subtotal

  - measure: count
    type: count
    drill_fields: [orders.order_id, orders.ship_name]

