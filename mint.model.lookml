- connection: mint
  persist_for: 24 hours

- scoping: true                  # for backward compatibility
- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards


- explore: mint
  joins:
    - join: category_facts
      type: left_outer
      relationship: many_to_one
      sql_on: ${mint.category} = ${category_facts.category}
    - join: mint_taxonomy
      type: left_outer
      relationship: many_to_one
      sql_on: ${mint.category} = ${mint_taxonomy.child}