- connection: mint

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: mint
  view_label: Mint Transaction History
  joins:
    - join: category_facts
      type: left_outer
      relationship: many_to_one
      sql_on: ${mint.category} = ${category_facts.category}
    - join: mint_taxonomy
      type: left_outer
      relationship: many_to_one
      sql_on: ${mint.category} = ${mint_taxonomy.child}
    - join: merchant_facts
      type: left_outer
      relationship: many_to_one
      sql_on: ${mint.description} = ${merchant_facts.description}