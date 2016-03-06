- view: customer_demographics
  sql_table_name: CustomerDemographics
  fields:

  - dimension: customer_desc
    sql: ${TABLE}.CustomerDesc

  - dimension: customer_type_id
    sql: ${TABLE}.CustomerTypeID

  - measure: count
    type: count
    drill_fields: []

