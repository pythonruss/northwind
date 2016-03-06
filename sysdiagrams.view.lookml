- view: sysdiagrams
  fields:

  - dimension: definition
    sql: ${TABLE}.definition

  - dimension: diagram_id
    type: int
    sql: ${TABLE}.diagram_id

  - dimension: name
    sql: ${TABLE}.name

  - dimension: principal_id
    type: int
    sql: ${TABLE}.principal_id

  - dimension: version
    type: int
    sql: ${TABLE}.version

  - measure: count
    type: count
    drill_fields: [name]

