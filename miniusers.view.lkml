view: miniusers {
  sql_table_name: mytoddler.miniusers ;;
  suggestions: no

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: dob {
    type: string
    sql: ${TABLE}.dob ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.user_id ;;
    link: {
      label: "Embed-aware Dashboard"
      icon_url: "http://www.looker.com/favicon.ico"
      url:
      "{% assign url = link %}
      {% if url contains 'embed' %}
      {% assign embed_part = '/embed/' %}
      {% else %}
      {% assign embed_part = '/' %}
      {% endif %}
      {{embed_part}}dashboards/4"
    }
  }

  filter: forfun {}

  measure: count {
    type: count
    drill_fields: [detail*]
    filters: {
      field: user_id
      value: "<1"
    }
    filters: {
      field: user_id
      value: "<2"
    }
    filters: {
      field: user_id
      value: "<3"
    }
    filters: {
      field: user_id
      value: "<4"
    }
    filters: {
      field: user_id
      value: "<11"
    }
    filters: {
      field: user_id
      value: "<12"
    }
    filters: {
      field: user_id
      value: "<13"
    }
    filters: {
      field: user_id
      value: "<14"
    }
    filters: {
      field: user_id
      value: "<21"
    }
    filters: {
      field: user_id
      value: "<22"
    }
    filters: {
      field: user_id
      value: "<23"
    }
    filters: {
      field: user_id
      value: "<24"
    }
    filters: {
      field: user_id
      value: "<31"
    }
    filters: {
      field: user_id
      value: "<32"
    }
    filters: {
      field: user_id
      value: "<33"
    }
    filters: {
      field: user_id
      value: "<34"
    }
    filters: {
      field: user_id
      value: "<41"
    }
    filters: {
      field: user_id
      value: "<42"
    }
    filters: {
      field: user_id
      value: "<43"
    }
    filters: {
      field: user_id
      value: "<44"
    }
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      last_name,
      users.id,
      users.first_name,
      users.last_name,
      users.username,
      diet.count,
      mood.count,
      steps.count
    ]
  }
}
