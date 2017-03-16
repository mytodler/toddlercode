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
      week
    ]
    sql: ${TABLE}.time_date ;;
  }

dimension: bi_weekly {
  type:  string
  sql: CASE WHEN
MOD(extract(week from ${TABLE}.time),2)
THEN TO_CHAR(DATE_TRUNC('week', DATEADD(week,1,${TABLE}.time)), 'YYYY-MM-DD')
ELSE TO_CHAR(DATE_TRUNC('week', ${TABLE}.time, 'YYYY-MM-DD') END  ;;
}

  measure: count {
    type: count
    drill_fields: [id, miniusers.id, miniusers.first_name, miniusers.last_name]
  }
}
