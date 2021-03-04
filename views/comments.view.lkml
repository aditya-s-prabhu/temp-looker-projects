view: comments {
  sql_table_name: dbo.Comments ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: comments {
    type: string
    sql: ${TABLE}.Comments ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
