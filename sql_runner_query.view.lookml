
- view: sql_runner_query
  derived_table:
    sql_trigger_value: select 1
    sql: |
      SELECT * FROM dbo.[Contacts]

  fields:
  - measure: count
    type: count
    drill_fields: detail*

  - dimension: contact_id
    type: number
    sql: ${TABLE}.ContactID

  - dimension: contact_type
    type: string
    sql: ${TABLE}.ContactType

  - dimension: company_name
    type: string
    sql: ${TABLE}.CompanyName

  - dimension: contact_name
    type: string
    sql: ${TABLE}.ContactName

  - dimension: contact_title
    type: string
    sql: ${TABLE}.ContactTitle

  - dimension: address
    type: string
    sql: ${TABLE}.Address

  - dimension: city
    type: string
    sql: ${TABLE}.City

  - dimension: region
    type: string
    sql: ${TABLE}.Region

  - dimension: postal_code
    type: string
    sql: ${TABLE}.PostalCode

  - dimension: country
    type: string
    sql: ${TABLE}.Country

  - dimension: phone
    type: string
    sql: ${TABLE}.Phone

  - dimension: extension
    type: string
    sql: ${TABLE}.Extension

  - dimension: fax
    type: string
    sql: ${TABLE}.Fax

  - dimension: home_page
    type: string
    sql: ${TABLE}.HomePage

  - dimension: photo_path
    type: string
    sql: ${TABLE}.PhotoPath

  - dimension: photo
    type: string
    sql: ${TABLE}.Photo

  sets:
    detail:
      - contact_id
      - contact_type
      - company_name
      - contact_name
      - contact_title
      - address
      - city
      - region
      - postal_code
      - country
      - phone
      - extension
      - fax
      - home_page
      - photo_path
      - photo

