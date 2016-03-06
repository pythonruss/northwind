- view: quarterly_orders
  sql_table_name: |
    [Quarterly Orders]
  fields:

  - dimension: city
    sql: ${TABLE}.City

  - dimension: company_name
    sql: ${TABLE}.CompanyName

  - dimension: country
    sql: ${TABLE}.Country

  - dimension: customer_id
    # hidden: true
    sql: ${TABLE}.CustomerID

  - measure: count
    type: count
    drill_fields: [company_name, customers.customer_id, customers.company_name, customers.contact_name]

