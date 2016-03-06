- view: shippers
  sql_table_name: Shippers
  fields:

  - dimension: shipper_id
    primary_key: true
    type: int
    sql: ${TABLE}.ShipperID

  - dimension: company_name
    sql: ${TABLE}.CompanyName

  - dimension: phone
    sql: ${TABLE}.Phone

  - measure: count
    type: count
    drill_fields: [shipper_id, company_name]

