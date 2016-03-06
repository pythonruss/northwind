- view: territories
  sql_table_name: Territories
  fields:

  - dimension: territory_id
    primary_key: true
    sql: ${TABLE}.TerritoryID

  - dimension: region_id
    type: int
    # hidden: true
    sql: ${TABLE}.RegionID

  - dimension: territory_description
    sql: ${TABLE}.TerritoryDescription

  - measure: count
    type: count
    drill_fields: [territory_id, region.region_id]

