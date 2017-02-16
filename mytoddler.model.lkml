connection: "athena_db"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: diet {
  join: miniusers {
    type: left_outer
    sql_on: ${diet.miniuser_id} = ${miniusers.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${miniusers.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: dish {}

explore: food {}

explore: miniusers {
  join: users {
    type: left_outer
    sql_on: ${miniusers.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: mood {
  join: miniusers {
    type: left_outer
    sql_on: ${mood.miniuser_id} = ${miniusers.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${miniusers.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: steps {
  join: miniusers {
    type: left_outer
    sql_on: ${steps.miniuser_id} = ${miniusers.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${miniusers.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: users {}
