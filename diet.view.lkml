view: diet {
  sql_table_name: mytoddler.diet ;;
  suggestions: no

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: food_consumed {
    type: string
    sql: ${TABLE}.food_consumed ;;
  }

  dimension: miniuser_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.miniuser_id ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}.notes ;;
  }

  dimension_group: time {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.time_date ;;
  }

  measure: count {
    type: count
    drill_fields: [id, miniusers.id, miniusers.first_name, miniusers.last_name]
  }
}
