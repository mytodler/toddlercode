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

  filter: date_filter {
    type: date
    default_value: "now"
  }



  dimension: mood_rating {
    type: number
    sql: ${TABLE}.mood_rating ;;
    html: {{ value }}
    {% assign url = link %}
      {% if url contains 'dashboards/3' %}
      {% assign dashboard_no = '3' %}
      {% else %}
      {% assign dashboard_no = '21' %}
      {% endif %}
    <a href="https://mvf.looker.com/dashboards/{{ dashboard_no }}?Subcategory={{ value }}" >
    <img src="http://google.com/favicon.ico"></a>;;

  }

  dimension: mood_ratingv2 {
    type: number
    sql: ${TABLE}.mood_rating ;;
    link: {
      label: "Last 14 days"
      icon_url: "http://www.looker.com/favicon.ico"
      url: "{% assign url = link %}
      {% if url contains 'embed' %}
      {% assign embed_part = '/embed/' %}
      {% else %}
      {% assign embed_part = '/' %}
      {% endif %}
      {{embed_part}}dashboards/360"
    }
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
      year,
      minute
    ]
    sql: ${TABLE}.time_date ;;
  }

  measure: last_updated_date {
    type: date
    sql: MAX(${time_raw});;
    convert_tz: no
  }

  measure: count {
    type: count
    drill_fields: [id, miniusers.id, miniusers.first_name, miniusers.last_name]
  }

  measure: haveresults_count {
    type: count
    filters: {
      field: mood_rating
      value: ">0"
    }
    }

    measure: divisioncount {
      type: number
      sql: ${count}/${haveresults_count} ;;
    }

}
