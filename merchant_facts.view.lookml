- view: merchant_facts
  derived_table:
    sql: |
      SELECT 
        rank() over ( order by sum(m.amount) desc) as rank,
        m.description AS description,
        sum(m.amount) AS TOTAL
      FROM 
        dbo.mint m
      WHERE
       1=1
        AND {% condition mint.date_date %} m.[date] {% endcondition %}
        AND {% condition mint.transaction_type %} M.[Transaction Type] {% endcondition %}
        AND {% condition mint.labels %} M.[Labels] {% endcondition %}
        AND {% condition mint.category %} M.CATEGORY {% endcondition %}
      GROUP BY
        m.description
        

  fields:
  
  
  - dimension: rank_name
    label: Ranked Merchant
    description: Gives a full list of the ranked subcategories
    type: string
    sql: |
      CASE 
        WHEN ${rank} < 10 THEN  concat('0',${rank},') ',${description})
        ELSE concat(${rank},') ',${description})
      END
      

  - filter: rank_other_bucket
    type: number
    view_label: 

  - dimension: rank_name_bucket
    label: Ranked Merchant with Other Bucket
    type: string
    sql: |
      CASE
        WHEN {% condition rank_other_bucket %} ${rank} {% endcondition %} THEN 'Other' 
        ELSE ${rank_name}
      END

  - dimension: rank
    type: number
    sql: ${TABLE}.rank

  - dimension: description
    type: string
    sql: ${TABLE}.description

  - dimension: total
    hidden: true
    type: number
    sql: ${TABLE}.TOTAL

  sets:
    detail:
      - rank
      - category
      - total