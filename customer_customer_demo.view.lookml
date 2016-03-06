- view: customer_customer_demo
  sql_table_name: |
      [CustomerCustomerDemo]
  fields:

  - dimension: customer_id
    # hidden: true
    sql: ${TABLE}.CustomerID

  - dimension: customer_type_id
    sql: ${TABLE}.CustomerTypeID

  - measure: count
    type: count
    drill_fields: [customers.customer_id, customers.company_name, customers.contact_name]

