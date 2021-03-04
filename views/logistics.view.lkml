view: logistics {
  sql_table_name: dbo.Logistics ;;

  dimension: customer {
    type: string
    sql: ${TABLE}.Customer ;;
  }

  dimension: driver_name {
    type: string
    sql: ${TABLE}."Driver Name" ;;
  }

  dimension: driver_phone_no {
    type: string
    sql: ${TABLE}."Driver Phone No" ;;
  }

  dimension: order_no {
    type: number
    sql: ${TABLE}."Order No" ;;
  }

  dimension_group: order_pick_up {
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
    sql: ${TABLE}."Order PickUp Date" ;;
  }

  dimension: trip_no {
    type: string
    sql: ${TABLE}."Trip No" ;;
  }

  dimension: truck_current_status {
    type: string
    sql: ${TABLE}."Truck Current Status" ;;
  }

  dimension: truck_no {
    type: string
    sql: ${TABLE}."Truck No" ;;
  }

  measure: count {
    type: count
    drill_fields: [driver_name]
  }
}
