connection: "mssqlserver2019"

# include all the views
include: "/views/**/*.view"

datagroup: looker_demo_dev_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: looker_demo_dev_default_datagroup

explore: comments {}

explore: company {}

explore: contact_details {}

explore: discount {}

explore: etl_audit {}

explore: icesurvey_entry {}

explore: item_comments {}

explore: logistics {}

explore: organisation {}

explore: shopify_orders {}
