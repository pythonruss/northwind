- view: contacts
  sql_table_name: Contacts
  fields:

  - dimension: contact_id
    primary_key: true
    type: int
    sql: ${TABLE}.ContactID

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

  - dimension: contact_type
    sql: ${TABLE}.ContactType

  - dimension: country
    sql: ${TABLE}.Country

  - dimension: extension
    sql: ${TABLE}.Extension

  - dimension: fax
    sql: ${TABLE}.Fax

  - dimension: home_page
    sql: ${TABLE}.HomePage

  - dimension: phone
    sql: ${TABLE}.Phone

  - dimension: photo
    sql: ${TABLE}.Photo

  - dimension: photo_path
    sql: ${TABLE}.PhotoPath

  - dimension: postal_code
    sql: ${TABLE}.PostalCode

  - dimension: region
    sql: ${TABLE}.Region

  - measure: count
    type: count
    drill_fields: [contact_id, company_name, contact_name]

