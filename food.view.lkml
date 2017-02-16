view: food {
  sql_table_name: newtrition.food ;;
  suggestions: no

  dimension: additives {
    type: string
    sql: ${TABLE}.additives ;;
  }

  dimension: additives_en {
    type: string
    sql: ${TABLE}.additives_en ;;
  }

  dimension: additives_n {
    type: string
    sql: ${TABLE}.additives_n ;;
  }

  dimension: additives_tags {
    type: string
    sql: ${TABLE}.additives_tags ;;
  }

  dimension: allergens {
    type: string
    sql: ${TABLE}.allergens ;;
  }

  dimension: allergens_en {
    type: string
    sql: ${TABLE}.allergens_en ;;
  }

  dimension: alpha_linolenic_acid_100g {
    type: string
    sql: ${TABLE}.alpha_linolenic_acid_100g ;;
  }

  dimension: arachidic_acid_100g {
    type: string
    sql: ${TABLE}.arachidic_acid_100g ;;
  }

  dimension: arachidonic_acid_100g {
    type: string
    sql: ${TABLE}.arachidonic_acid_100g ;;
  }

  dimension: behenic_acid_100g {
    type: string
    sql: ${TABLE}.behenic_acid_100g ;;
  }

  dimension: brands {
    type: string
    sql: ${TABLE}.brands ;;
  }

  dimension: brands_tags {
    type: string
    sql: ${TABLE}.brands_tags ;;
  }

  dimension: butyric_acid_100g {
    type: string
    sql: ${TABLE}.butyric_acid_100g ;;
  }

  dimension: capric_acid_100g {
    type: string
    sql: ${TABLE}.capric_acid_100g ;;
  }

  dimension: caproic_acid_100g {
    type: string
    sql: ${TABLE}.caproic_acid_100g ;;
  }

  dimension: caprylic_acid_100g {
    type: string
    sql: ${TABLE}.caprylic_acid_100g ;;
  }

  dimension: categories {
    type: string
    sql: ${TABLE}.categories ;;
  }

  dimension: categories_en {
    type: string
    sql: ${TABLE}.categories_en ;;
  }

  dimension: categories_tags {
    type: string
    sql: ${TABLE}.categories_tags ;;
  }

  dimension: cerotic_acid_100g {
    type: string
    sql: ${TABLE}.cerotic_acid_100g ;;
  }

  dimension: cities {
    type: string
    sql: ${TABLE}.cities ;;
  }

  dimension: cities_tags {
    type: string
    sql: ${TABLE}.cities_tags ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: countries {
    type: string
    sql: ${TABLE}.countries ;;
  }

  dimension: countries_en {
    type: string
    sql: ${TABLE}.countries_en ;;
  }

  dimension: countries_tags {
    type: string
    sql: ${TABLE}.countries_tags ;;
  }

  dimension_group: created_datetime {
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
    sql: ${TABLE}.created_datetime ;;
  }

  dimension: created_t {
    type: string
    sql: ${TABLE}.created_t ;;
  }

  dimension: creator {
    type: string
    sql: ${TABLE}.creator ;;
  }

  dimension: docosahexaenoic_acid_100g {
    type: string
    sql: ${TABLE}.docosahexaenoic_acid_100g ;;
  }

  dimension: eicosapentaenoic_acid_100g {
    type: string
    sql: ${TABLE}.eicosapentaenoic_acid_100g ;;
  }

  dimension: emb_codes {
    type: string
    sql: ${TABLE}.emb_codes ;;
  }

  dimension: emb_codes_tags {
    type: string
    sql: ${TABLE}.emb_codes_tags ;;
  }

  dimension: energy_100g {
    type: string
    sql: ${TABLE}.energy_100g ;;
  }

  dimension: energy_from_fat_100g {
    type: string
    sql: ${TABLE}.energy_from_fat_100g ;;
  }

  dimension: fat_100g {
    type: string
    sql: ${TABLE}.fat_100g ;;
  }

  dimension: first_packaging_code_geo {
    type: string
    sql: ${TABLE}.first_packaging_code_geo ;;
  }

  dimension: gamma_linolenic_acid_100g {
    type: string
    sql: ${TABLE}.gamma_linolenic_acid_100g ;;
  }

  dimension: generic_name {
    type: string
    sql: ${TABLE}.generic_name ;;
  }

  dimension: image_small_url {
    type: string
    sql: ${TABLE}.image_small_url ;;
  }

  dimension: image_url {
    type: string
    sql: ${TABLE}.image_url ;;
  }

  dimension: ingredients_from_palm_oil {
    type: string
    sql: ${TABLE}.ingredients_from_palm_oil ;;
  }

  dimension: ingredients_from_palm_oil_n {
    type: string
    sql: ${TABLE}.ingredients_from_palm_oil_n ;;
  }

  dimension: ingredients_from_palm_oil_tags {
    type: string
    sql: ${TABLE}.ingredients_from_palm_oil_tags ;;
  }

  dimension: ingredients_text {
    type: string
    sql: ${TABLE}.ingredients_text ;;
  }

  dimension: ingredients_that_may_be_from_palm_oil {
    type: string
    sql: ${TABLE}.ingredients_that_may_be_from_palm_oil ;;
  }

  dimension: ingredients_that_may_be_from_palm_oil_n {
    type: string
    sql: ${TABLE}.ingredients_that_may_be_from_palm_oil_n ;;
  }

  dimension: ingredients_that_may_be_from_palm_oil_tags {
    type: string
    sql: ${TABLE}.ingredients_that_may_be_from_palm_oil_tags ;;
  }

  dimension: labels {
    type: string
    sql: ${TABLE}.labels ;;
  }

  dimension: labels_en {
    type: string
    sql: ${TABLE}.labels_en ;;
  }

  dimension: labels_tags {
    type: string
    sql: ${TABLE}.labels_tags ;;
  }

  dimension_group: last_modified_datetime {
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
    sql: ${TABLE}.last_modified_datetime ;;
  }

  dimension: last_modified_t {
    type: string
    sql: ${TABLE}.last_modified_t ;;
  }

  dimension: lauric_acid_100g {
    type: string
    sql: ${TABLE}.lauric_acid_100g ;;
  }

  dimension: lignoceric_acid_100g {
    type: string
    sql: ${TABLE}.lignoceric_acid_100g ;;
  }

  dimension: linoleic_acid_100g {
    type: string
    sql: ${TABLE}.linoleic_acid_100g ;;
  }

  dimension: main_category {
    type: string
    sql: ${TABLE}.main_category ;;
  }

  dimension: main_category_en {
    type: string
    sql: ${TABLE}.main_category_en ;;
  }

  dimension: manufacturing_places {
    type: string
    sql: ${TABLE}.manufacturing_places ;;
  }

  dimension: manufacturing_places_tags {
    type: string
    sql: ${TABLE}.manufacturing_places_tags ;;
  }

  dimension: melissic_acid_100g {
    type: string
    sql: ${TABLE}.melissic_acid_100g ;;
  }

  dimension: monounsaturated_fat_100g {
    type: string
    sql: ${TABLE}.monounsaturated_fat_100g ;;
  }

  dimension: montanic_acid_100g {
    type: string
    sql: ${TABLE}.montanic_acid_100g ;;
  }

  dimension: myristic_acid_100g {
    type: string
    sql: ${TABLE}.myristic_acid_100g ;;
  }

  dimension: no_nutriments {
    type: number
    sql: ${TABLE}.no_nutriments ;;
  }

  dimension: nutrition_grade_fr {
    type: string
    sql: ${TABLE}.nutrition_grade_fr ;;
  }

  dimension: nutrition_grade_uk {
    type: string
    sql: ${TABLE}.nutrition_grade_uk ;;
  }

  dimension: omega_3_fat_100g {
    type: string
    sql: ${TABLE}.omega_3_fat_100g ;;
  }

  dimension: omega_6_fat_100g {
    type: string
    sql: ${TABLE}.omega_6_fat_100g ;;
  }

  dimension: origins {
    type: string
    sql: ${TABLE}.origins ;;
  }

  dimension: origins_tags {
    type: string
    sql: ${TABLE}.origins_tags ;;
  }

  dimension: packaging {
    type: string
    sql: ${TABLE}.packaging ;;
  }

  dimension: packaging_tags {
    type: string
    sql: ${TABLE}.packaging_tags ;;
  }

  dimension: palmitic_acid_100g {
    type: string
    sql: ${TABLE}.palmitic_acid_100g ;;
  }

  dimension: pnns_groups_1 {
    type: string
    sql: ${TABLE}.pnns_groups_1 ;;
  }

  dimension: pnns_groups_2 {
    type: string
    sql: ${TABLE}.pnns_groups_2 ;;
  }

  dimension: polyunsaturated_fat_100g {
    type: string
    sql: ${TABLE}.polyunsaturated_fat_100g ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: purchase_places {
    type: string
    sql: ${TABLE}.purchase_places ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: saturated_fat_100g {
    type: string
    sql: ${TABLE}.saturated_fat_100g ;;
  }

  dimension: serving_size {
    type: string
    sql: ${TABLE}.serving_size ;;
  }

  dimension: states {
    type: string
    sql: ${TABLE}.states ;;
  }

  dimension: states_en {
    type: string
    sql: ${TABLE}.states_en ;;
  }

  dimension: states_tags {
    type: string
    sql: ${TABLE}.states_tags ;;
  }

  dimension: stearic_acid_100g {
    type: string
    sql: ${TABLE}.stearic_acid_100g ;;
  }

  dimension: stores {
    type: string
    sql: ${TABLE}.stores ;;
  }

  dimension: traces {
    type: string
    sql: ${TABLE}.traces ;;
  }

  dimension: traces_en {
    type: string
    sql: ${TABLE}.traces_en ;;
  }

  dimension: traces_tags {
    type: string
    sql: ${TABLE}.traces_tags ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name, generic_name]
  }
}
