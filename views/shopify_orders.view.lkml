view: shopify_orders {
  sql_table_name: dbo.SHOPIFY_ORDERS ;;

  dimension: customer_firstname {
    type: string
    sql: ${TABLE}.CUSTOMER_FIRSTNAME ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.EMAIL ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}.ORDER_ID ;;
  }

  dimension: store_name {
    type: string
    sql: ${TABLE}.STORE_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [customer_firstname, store_name]
  }
}
