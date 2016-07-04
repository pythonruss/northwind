- view: mint
  fields:

  - dimension: account_name
    type: string
    sql: ${TABLE}."Account Name"

  - dimension: amount
    type: number
    value_format: '$#,##0.00'
    
  - dimension: amount_tier
    type: tier
    tiers: [0,5,10,25,50,75,100,500,1000]
    sql: ${amount}
    style: integer

  - dimension: net_amount
    type: number
    value_format: '$#,##0.00'
    sql: |
      CASE
        WHEN ${TABLE}."Transaction Type" = 'debit' THEN (${TABLE}.Amount * -1.0) 
        ELSE ${TABLE}.Amount
      END
      

  - dimension: category
    label: Sub Category
    type: string
    sql: ${TABLE}.Category

  - dimension_group: date
    label: Transaction
    type: time
    timeframes: [time, date, week, month, year]
    sql: ${TABLE}.Date

  - dimension: description
    type: string
    sql: ${TABLE}.Description

  - dimension: labels
    type: string
    sql: ${TABLE}.Labels

  - dimension: notes
    type: string
    sql: ${TABLE}.Notes

  - dimension: original_description
    type: string
    sql: ${TABLE}."Original Description"

  - dimension: transaction_type
    type: string
    sql: ${TABLE}."Transaction Type"

  - measure: total_amount
    type: sum
    sql: ${amount}
    value_format: '$#,##0.00'
    drill_fields: detail*
    
  - measure: net_total_amount
    type: sum
    sql: ${net_amount}
    value_format: '$#,##0.00'
    drill_fields: detail*
    
  - measure: running_total_amount
    type: running_total
    sql: ${net_total_amount}

  - measure: count
    label: Transaction Count
    type: count
    drill_fields: detail*
    
  - measure: avg_spend_per_transaction
    type: number
    label: Average Spend Per Tansaction
    sql: ${total_amount}*1.0 / nullif(${count},0)
    value_format: '$#,##0.00'


  sets:
    detail:
      - account_name
      - description
      - date_date
      - amount
      - category
      - decsription
      - transaction_type
      - notes
