view: contact_details {
  sql_table_name: dbo.ContactDetails ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."First Name" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."Last Name" ;;
  }

  dimension: phone_number {
    type: number
    sql: ${TABLE}."Phone Number" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, first_name, last_name]
  }
}
