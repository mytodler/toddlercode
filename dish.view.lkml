view: dish {
  sql_table_name: newtrition.dish ;;
  suggestions: no

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: first_appeared {
    type: string
    sql: ${TABLE}.first_appeared ;;
  }

  dimension: highest_price {
    type: number
    sql: ${TABLE}.highest_price ;;
  }

  dimension: last_appeared {
    type: string
    sql: ${TABLE}.last_appeared ;;
  }

  dimension: lowest_price {
    type: number
    sql: ${TABLE}.lowest_price ;;
  }

  dimension: menus_appeared {
    type: number
    sql: ${TABLE}.menus_appeared ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: times_appeared {
    type: number
    sql: ${TABLE}.times_appeared ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
