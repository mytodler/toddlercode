view: Test {

derived_table: {
  sql:
  SELECT now() as "today";;
}

filter: range_date {
  label: "FILTER date range"
  type: date
}

dimension_group: testdate {
  type: time
  timeframes: [date]
  sql: ${TABLE}.today ;;
}
}
