- view: orders
  sql_table_name: Orders
  fields:

  - dimension: order_id
    primary_key: true
    type: int
    sql: ${TABLE}.OrderID

  - dimension: customer_id
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: employee_id
    type: int
    # hidden: true
    sql: ${TABLE}.EmployeeID

  - dimension: freight
    sql: ${TABLE}.Freight

  - dimension_group: order
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.OrderDate

  - dimension_group: required
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.RequiredDate

  - dimension: ship_address
    sql: ${TABLE}.ShipAddress

  - dimension: ship_city
    sql: ${TABLE}.ShipCity

  - dimension: ship_country
    sql: ${TABLE}.ShipCountry

  - dimension: ship_name
    sql: ${TABLE}.ShipName

  - dimension: ship_postal_code
    sql: ${TABLE}.ShipPostalCode

  - dimension: ship_region
    sql: ${TABLE}.ShipRegion

  - dimension: ship_via
    type: int
    sql: ${TABLE}.ShipVia

  - dimension_group: shipped
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ShippedDate

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - order_id
    - ship_name
    - customers.customer_id
    - customers.company_name
    - customers.contact_name
    - employees.employee_id
    - employees.last_name
    - employees.first_name
    - invoices.count
    - order_details.count
    - order_details_extended.count
    - order_subtotals.count
    - orders_qry.count
    - sales_totals_by_amount.count
    - summary_of_sales_by_quarter.count
    - summary_of_sales_by_year.count

