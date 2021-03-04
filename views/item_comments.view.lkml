view: item_comments {
  sql_table_name: dbo.ItemComments ;;

  dimension: assigned_to_emp_id {
    type: string
    sql: ${TABLE}."Assigned To EmpID" ;;
  }

  dimension: comment_number {
    type: number
    sql: ${TABLE}."Comment Number" ;;
  }

  dimension_group: created_date {
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
    sql: ${TABLE}."Created DateTime" ;;
  }

  dimension: item_comments {
    type: string
    sql: ${TABLE}."Item Comments" ;;
  }

  dimension: item_description {
    type: string
    sql: ${TABLE}."Item Description" ;;
  }

  dimension: item_number {
    type: number
    sql: ${TABLE}."Item Number" ;;
  }

  dimension: owner_emp_id {
    type: string
    sql: ${TABLE}."Owner EmpID" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
