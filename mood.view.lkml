view: mood {
  sql_table_name: mytoddler.mood ;;
  suggestions: no

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
    link: {
      label: "Test"
      url: "https://rescue-will.local:9999/explore/mytoddler/users?fields=mood.count,mood.miniuser_id&sorts=mood.count+desc&limit=500&column_limit=50&query_timezone=America%2FLos_Angeles&vis=%7B%22value_labels%22%3A%22legend%22%2C%22label_type%22%3A%22labPer%22%2C%22type%22%3A%22looker_pie%22%2C%22show_view_names%22%3Afalse%2C%22show_row_numbers%22%3Atrue%2C%22truncate_column_names%22%3Afalse%2C%22hide_totals%22%3Afalse%2C%22hide_row_totals%22%3Afalse%2C%22table_theme%22%3A%22editable%22%2C%22limit_displayed_rows%22%3Afalse%2C%22series_types%22%3A%7B%7D%7D&filter_config=%7B%7D&origin=share-expanded"
      icon_url: "http://google.com/favicon.ico"
    }
  }

  dimension: miniuser_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.miniuser_id ;;
  }

  dimension: mood_rating {
    type: number
    sql: ${TABLE}.mood_rating ;;
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
