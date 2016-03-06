- view: employees
  sql_table_name: Employees
  fields:

  - dimension: employee_id
    primary_key: true
    type: int
    sql: ${TABLE}.EmployeeID

  - dimension: address
    sql: ${TABLE}.Address

  - dimension_group: birth
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.BirthDate

  - dimension: city
    sql: ${TABLE}.City

  - dimension: country
    sql: ${TABLE}.Country

  - dimension: extension
    sql: ${TABLE}.Extension

  - dimension: first_name
    sql: ${TABLE}.FirstName

  - dimension_group: hire
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.HireDate

  - dimension: home_phone
    sql: ${TABLE}.HomePhone

  - dimension: last_name
    sql: ${TABLE}.LastName

  - dimension: notes
    sql: ${TABLE}.Notes

  - dimension: photo
    sql: ${TABLE}.Photo

  - dimension: photo_path
    sql: ${TABLE}.PhotoPath

  - dimension: postal_code
    sql: ${TABLE}.PostalCode

  - dimension: region
    sql: ${TABLE}.Region

  - dimension: reports_to
    type: int
    sql: ${TABLE}.ReportsTo

  - dimension: title
    sql: ${TABLE}.Title

  - dimension: title_of_courtesy
    sql: ${TABLE}.TitleOfCourtesy

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - employee_id
    - last_name
    - first_name
    - employee_territories.count
    - orders.count
    - orders_qry.count

