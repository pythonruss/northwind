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
    sql:  convert(varchar, convert(binary, ${TABLE}.Picture)) 
    html: |
      <img width="16" height="16" alt="star" src="data:image/gif;base64,{{ value }}"/>
      
  - measure: count
    type: count
    drill_fields: [category_id, category_name]

