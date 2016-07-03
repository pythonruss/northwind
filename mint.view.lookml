- view: mint
  fields:

  - dimension: account_name
    type: string
    sql: ${TABLE}."Account Name"

  - dimension: amount
    type: number
    value_format: '$#,##0.00'

  - dimension: net_amount
    type: number
    value_format: '$#,##0.00'
    sql: |
      CASE
        WHEN ${TABLE}."Transaction Type" = 'debit' THEN (${TABLE}.Amount * -1.0) 
        ELSE ${TABLE}.Amount
      END
      

  - dimension: category
    type: string
    sql: ${TABLE}.Category

  - dimension_group: date
    type: time
    timeframes: [time, date, week, month]
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
    sql: ${amount}
    value_format: '$#,##0.00'
    drill_fields: detail*
    
  - measure: running_total_amount
    type: running_total
    sql: ${net_total_amount}

  - measure: count
    type: count
    drill_fields: [account_name]


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
