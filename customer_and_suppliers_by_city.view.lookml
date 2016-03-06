- view: customer_and_suppliers_by_city
  sql_table_name: |
    [Customer and Suppliers by City]
  fields:

  - dimension: city
    sql: ${TABLE}.City

  - dimension: company_name
    sql: ${TABLE}.CompanyName

  - dimension: contact_name
    sql: ${TABLE}.ContactName

  - dimension: relationship
    sql: ${TABLE}.Relationship

  - measure: count
    type: count
    drill_fields: [company_name, contact_name]

