- view: customers
  sql_table_name: Customers
  fields:

  - dimension: customer_id
    primary_key: true
    sql: ${TABLE}.CustomerID

  - dimension: address
    sql: ${TABLE}.Address

  - dimension: city
    sql: ${TABLE}.City

  - dimension: company_name
    sql: ${TABLE}.CompanyName

  - dimension: contact_name
    sql: ${TABLE}.ContactName

  - dimension: contact_title
    sql: ${TABLE}.ContactTitle

  - dimension: country
    sql: ${TABLE}.Country

  - dimension: fax
    sql: ${TABLE}.Fax

  - dimension: phone
    sql: ${TABLE}.Phone

  - dimension: postal_code
    sql: ${TABLE}.PostalCode

  - dimension: region
    sql: ${TABLE}.Region

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - customer_id
    - company_name
    - contact_name
    - customer_customer_demo.count
    - invoices.count
    - orders.count
    - orders_qry.count
    - quarterly_orders.count

