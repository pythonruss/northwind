- view: orders_qry
  sql_table_name: | 
    [Orders Qry]
  fields:

  - dimension: address
    sql: ${TABLE}.Address

  - dimension: city
    sql: ${TABLE}.City

  - dimension: company_name
    sql: ${TABLE}.CompanyName

  - dimension: country
    sql: ${TABLE}.Country

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

  - dimension: order_id
    type: int
    # hidden: true
    sql: ${TABLE}.OrderID

  - dimension: postal_code
    sql: ${TABLE}.PostalCode

  - dimension: region
    sql: ${TABLE}.Region

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
    - ship_name
    - company_name
    - orders.order_id
    - orders.ship_name
    - customers.customer_id
    - customers.company_name
    - customers.contact_name
    - employees.employee_id
    - employees.last_name
    - employees.first_name

