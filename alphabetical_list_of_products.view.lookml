- view: alphabetical_list_of_products
  sql_table_name: |
    [Alphabetical list of products]
  fields:

  - dimension: category_id
    type: int
    sql: ${TABLE}.CategoryID

  - dimension: category_name
    sql: ${TABLE}.CategoryName

  - dimension: discontinued
    sql: ${TABLE}.Discontinued

  - dimension: product_id
    type: int
    # hidden: true
    sql: ${TABLE}.ProductID

  - dimension: product_name
    sql: ${TABLE}.ProductName

  - dimension: quantity_per_unit
    sql: ${TABLE}.QuantityPerUnit

  - dimension: reorder_level
    type: number
    sql: ${TABLE}.ReorderLevel

  - dimension: supplier_id
    type: int
    # hidden: true
    sql: ${TABLE}.SupplierID

  - dimension: unit_price
    sql: ${TABLE}.UnitPrice

  - dimension: units_in_stock
    type: number
    sql: ${TABLE}.UnitsInStock

  - dimension: units_on_order
    type: number
    sql: ${TABLE}.UnitsOnOrder

  - measure: count
    type: count
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - product_name
    - category_name
    - products.product_id
    - products.product_name
    - suppliers.supplier_id
    - suppliers.company_name
    - suppliers.contact_name

