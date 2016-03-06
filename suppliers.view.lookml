- view: suppliers
  sql_table_name: Suppliers
  fields:

  - dimension: supplier_id
    primary_key: true
    type: int
    sql: ${TABLE}.SupplierID

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

  - dimension: home_page
    sql: ${TABLE}.HomePage

  - dimension: phone
    sql: ${TABLE}.Phone

  - dimension: postal_code
    sql: ${TABLE}.PostalCode

  - dimension: region
    sql: ${TABLE}.Region

  - measure: count
    type: count
    drill_fields: [supplier_id, company_name, contact_name, alphabetical_list_of_products.count, products.count]

