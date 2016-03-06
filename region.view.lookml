- view: region
  sql_table_name: Region
  fields:

  - dimension: region_id
    primary_key: true
    type: int
    sql: ${TABLE}.RegionID

  - dimension: region_description
    sql: ${TABLE}.RegionDescription

  - measure: count
    type: count
    drill_fields: [region_id, territories.count]

