- view: sales_totals_by_amount
  sql_table_name: |
    [Sales Totals by Amount]
  fields:

  - dimension: company_name
    sql: ${TABLE}.CompanyName

  - dimension: order_id
    type: int
    # hidden: true
    sql: ${TABLE}.OrderID

  - dimension: sale_amount
    sql: ${TABLE}.SaleAmount

  - dimension_group: shipped
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ShippedDate

  - measure: count
    type: count
    drill_fields: [company_name, orders.order_id, orders.ship_name]

