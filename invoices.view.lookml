- view: invoices
  sql_table_name: Invoices
  fields:

  - dimension: address
    sql: ${TABLE}.Address

  - dimension: city
    sql: ${TABLE}.City

  - dimension: country
    sql: ${TABLE}.Country

  - dimension: customer_id
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: customer_name
    sql: ${TABLE}.CustomerName

  - dimension: discount
    type: number
    sql: ${TABLE}.Discount

  - dimension: extended_price
    sql: ${TABLE}.ExtendedPrice

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

  - dimension: product_id
    type: int
    # hidden: true
    sql: ${TABLE}.ProductID

  - dimension: product_name
    sql: ${TABLE}.ProductName

  - dimension: quantity
    type: number
    sql: ${TABLE}.Quantity

  - dimension: region
    sql: ${TABLE}.Region

  - dimension_group: required
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.RequiredDate

  - dimension: salesperson
    sql: ${TABLE}.Salesperson

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

  - dimension_group: shipped
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.ShippedDate

  - dimension: shipper_name
    sql: ${TABLE}.ShipperName

  - dimension: unit_price
    sql: ${TABLE}.UnitPrice

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - ship_name
    - customer_name
    - shipper_name
    - product_name
    - customers.customer_id
    - customers.company_name
    - customers.contact_name
    - orders.order_id
    - orders.ship_name
    - products.product_id
    - products.product_name

