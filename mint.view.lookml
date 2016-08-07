- view: mint
  derived_table:
    sql_trigger_value: select max(date) from dbo.mint
    indexes: [pk]
    sql: |
      SELECT 
        row_number() over (order by date) AS PK,
        M.*,
        
        PERCENT_RANK()  
          OVER ( partition by [Category] order by Amount ) AS sub_category_percentile,
        PERCENT_RANK()  
          OVER ( partition by [Description] order by Amount ) AS merchant_percentile,
          PERCENT_RANK()  
          OVER (order by Amount ) AS overall_percentile
      FROM dbo.mint M

  fields:

  - dimension: account_name
    type: string
    sql: |
      CASE
        WHEN ${TABLE}."Account Name" = 'Platinum Card' THEN 'Amex Platinum'
        WHEN ${TABLE}."Account Name" = 'Checking' THEN 'Wells Fargo Checking'
        WHEN ${TABLE}."Account Name" = 'Credit Card' THEN 'Wells Fargo Credit'
        WHEN ${TABLE}."Account Name" = 'CHASE CHECKING' THEN 'Chase Checking'
        WHEN ${TABLE}."Account Name" = 'Starwood Preferred Guest' THEN 'Amex SPG Card'
        WHEN ${TABLE}."Account Name" = 'CREDIT CARD' THEN 'Chase Credit'
        ELSE ${TABLE}."Account Name"
      END

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
      
  - dimension: pk
    primary_key: true
    type: string
    sql: ${TABLE}.pk
    #concat(${date_date},'-',${category},'-',${description},'-',${amount})

  - dimension: sub_category_percentile
    group_label: Percentiles
    type: number
    sql: ${TABLE}.sub_category_percentile
    value_format: '0.00%'
    
  - dimension: sub_category_percentile_tier
    group_label: Percentiles
#     style: integer
    type: tier
    tiers: [.1,.2,.3,.4,.5,.6,.7,.8,.9,.95,.98]
    sql: ${sub_category_percentile}

  - dimension: merchant_percentile
    group_label: Percentiles
    type: number
    sql: ${TABLE}.merchant_percentile
  - dimension: merchant_percentile_tier
    group_label: Percentiles
#     style: integer
    type: tier
    tiers: [.1,.2,.3,.4,.5,.6,.7,.8,.9,.95,.98]
    sql: ${merchant_percentile}
  - dimension: overall_percentile
    group_label: Percentiles
    type: number
    sql: ${TABLE}.overall_percentile

  - dimension: overall_percentile_tier
    group_label: Percentiles
#     style: integer
    type: tier
    tiers: [.1,.2,.3,.4,.5,.6,.7,.8,.9,.95,.98]
    sql: ${overall_percentile}

  - dimension: category
    label: Sub Category
    type: string
    sql: ${TABLE}.Category

  - dimension: is_transfer
    type: string
    sql: |
      CASE
        WHEN ${category} in ('Hide from Budgets & Trends','Finance Charge','Financial','Withdrawal','Cash & ATM','Credit Card Payment','Transfer','Transfer for Cash Spending') THEN 'True'
        ELSE 'False'
      END
      
      
  - dimension_group: date
    label: Transaction
    type: time
    timeframes: [time, date, week, month, year, day_of_week]
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
