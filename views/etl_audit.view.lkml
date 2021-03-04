view: etl_audit {
  sql_table_name: dbo.ETL_AUDIT ;;

  dimension: audit_key {
    type: number
    sql: ${TABLE}.AuditKey ;;
  }

  dimension: error_row_cnt {
    type: number
    sql: ${TABLE}.ErrorRowCnt ;;
  }

  dimension_group: exec_start_dt {
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
    sql: ${TABLE}.ExecStartDT ;;
  }

  dimension_group: exec_stop_dt {
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
    sql: ${TABLE}.ExecStopDT ;;
  }

  dimension: extract_row_cnt {
    type: number
    sql: ${TABLE}.ExtractRowCnt ;;
  }

  dimension: insert_row_cnt {
    type: number
    sql: ${TABLE}.InsertRowCnt ;;
  }

  dimension: parent_audit_key {
    type: number
    sql: ${TABLE}.ParentAuditKey ;;
  }

  dimension: process_guid {
    type: string
    sql: ${TABLE}.ProcessGUID ;;
  }

  dimension: process_name {
    type: string
    sql: ${TABLE}.ProcessName ;;
  }

  dimension: successful_processing_ind {
    type: string
    sql: ${TABLE}.SuccessfulProcessingInd ;;
  }

  dimension: table_final_row_cnt {
    type: number
    sql: ${TABLE}.TableFinalRowCnt ;;
  }

  dimension: table_initial_row_cnt {
    type: number
    sql: ${TABLE}.TableInitialRowCnt ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.TableName ;;
  }

  dimension: update_row_cnt {
    type: number
    sql: ${TABLE}.UpdateRowCnt ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, process_name]
  }
}
