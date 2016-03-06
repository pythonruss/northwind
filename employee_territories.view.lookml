- view: employee_territories
  sql_table_name: EmployeeTerritories
  fields:

  - dimension: employee_id
    type: int
    # hidden: true
    sql: ${TABLE}.EmployeeID

  - dimension: territory_id
    sql: ${TABLE}.TerritoryID

  - measure: count
    type: count
    drill_fields: [employees.employee_id, employees.last_name, employees.first_name]

