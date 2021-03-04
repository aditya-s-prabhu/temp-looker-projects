view: icesurvey_entry {
  sql_table_name: dbo.ICESurveyEntry ;;

  dimension: close_date {
    type: string
    sql: ${TABLE}."Close Date" ;;
  }

  dimension_group: completed {
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
    sql: ${TABLE}."Completed Date" ;;
  }

  dimension: contact_email {
    type: string
    sql: ${TABLE}."Contact Email" ;;
  }

  dimension: contact_name {
    type: string
    sql: ${TABLE}."Contact Name" ;;
  }

  dimension: contact_phone {
    type: string
    sql: ${TABLE}."Contact Phone" ;;
  }

  dimension: facility_id {
    type: number
    sql: ${TABLE}.FacilityID ;;
  }

  dimension: passcode {
    type: string
    sql: ${TABLE}.Passcode ;;
  }

  dimension_group: sent {
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
    sql: ${TABLE}."Sent Date" ;;
  }

  dimension_group: started {
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
    sql: ${TABLE}."Started Date" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [contact_name]
  }
}
