view: discount {
  sql_table_name: dbo.Discount ;;

  dimension: discount {
    type: number
    sql: ${TABLE}.Discount ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}."Order ID" ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}."Product ID" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.Quantity ;;
  }

  dimension: unit_price {
    type: number
    sql: ${TABLE}."Unit Price" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
