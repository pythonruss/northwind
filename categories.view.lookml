- view: categories
  sql_table_name: Categories
  fields:

  - dimension: category_id
    primary_key: true
    type: int
    sql: ${TABLE}.CategoryID

  - dimension: category_name
    sql: ${TABLE}.CategoryName

  - dimension: description
    sql: ${TABLE}.Description

  - dimension: picture
    sql: ${TABLE}.Picture

  - measure: count
    type: count
    drill_fields: [category_id, category_name]

