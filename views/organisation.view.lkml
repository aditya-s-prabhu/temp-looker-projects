view: organisation {
  sql_table_name: dbo.Organisation ;;

  dimension: contact_number {
    type: number
    sql: ${TABLE}."Contact Number" ;;
  }

  dimension: entry_date {
    type: string
    sql: ${TABLE}."Entry Date" ;;
  }

  dimension: org_id {
    type: number
    sql: ${TABLE}.OrgID ;;
  }

  dimension: org_name {
    type: string
    sql: ${TABLE}."Org Name" ;;
  }

  dimension: sales {
    type: number
    sql: ${TABLE}.Sales ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.Year ;;
  }

  measure: count {
    type: count
    drill_fields: [org_name]
  }
}
