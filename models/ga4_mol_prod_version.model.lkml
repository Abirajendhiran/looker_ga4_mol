connection: "ga4_mol"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: ga4_mol_prod_version_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: ga4_mol_prod_version_default_datagroup

explore: events {
  always_filter: {
    filters: [events.event_date: "7 days"]
  }
  sql_always_where: ${events.event_name} <> 'session_start' and ${stream_id} = '8199972794';;
}

explore: article_metadata{
  join: events {
    relationship: one_to_one
    sql_on: ${events.article_id} = ${article_metadata.article_id} ;;
  }
}
