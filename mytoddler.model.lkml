connection: "athena_db"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"


explore: users {
  join: miniusers {
      type: left_outer
      sql_on: ${miniusers.user_id} = ${users.id} ;;
      relationship: many_to_one
  }

  join: mood {
    type: left_outer
    sql_on: ${mood.miniuser_id} = ${miniusers.id} ;;
    relationship: many_to_one
  }

  join: steps {
    type: left_outer
    sql_on: ${steps.miniuser_id} = ${miniusers.id} ;;
    relationship: many_to_one
    }

  join: diet {
    type: left_outer
    sql_on: ${diet.miniuser_id} = ${miniusers.id} ;;
    relationship: many_to_one
  }

  join: Test {
    type: left_outer
    sql_on: 1=1 ;;
    relationship: many_to_one
  }


}

explore: users2 {
  from: users
  join: miniusers {
    type: left_outer
    sql_on: ${miniusers.user_id} = ${users2.id} ;;
    relationship: many_to_one
  }
  join: mood {
    type: left_outer
    sql_on: ${mood.miniuser_id} = ${miniusers.id} AND (${mood.time_raw}=MAX(${mood.time_raw}));;
    relationship: many_to_one
  }

}
