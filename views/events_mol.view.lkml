view: events {
  sql_table_name: `mol-and-metro-ga.analytics_432532749.events_*` ;;

  dimension_group: event {
    type: time
    timeframes: [date, week, day_of_week, month, year]
    sql: TIMESTAMP(PARSE_DATE('%Y%m%d', REGEXP_EXTRACT(_TABLE_SUFFIX,r'\d\d\d\d\d\d\d\d'))) ;;
  }
  dimension_group: _event {
    label: "Event"
    timeframes: [raw,time,hour,minute]
    type: time
    sql: TIMESTAMP_MICROS(${TABLE}.event_timestamp) ;;
  }

#Custom Event Params

  dimension: article_id {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'article_id');;
  }

  dimension: article_view_flag  {
    type: number
    sql: (
        CASE
          WHEN (
            SELECT
              value.int_value
            FROM
              UNNEST (event_params)
            WHERE
              (event_name = 'page_view' or event_name = 'article_view') /*page_view is for WEB, article_views is for APP*/
              AND key = 'article_views'
          ) = 1 THEN 1
          ELSE 0
        END
      );;
  }

  measure: total_article_views {
    type: sum
    sql: ${article_view_flag} ;;
  }

  measure: total_page_views {
    type: count
    filters: [event_name:"page_view,screen_view"]
  }

  dimension: video_id {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'video_internal_id');;
  }

  dimension: video_view_flag  {
    type: number
    sql: (
        CASE
          WHEN (
            SELECT
              value.int_value
            FROM
              UNNEST (event_params)
            WHERE
              (event_name = 'video_stream_start' or event_name = 'video_stream_continuous_play')
              AND key = 'video_views'
          ) = 1 THEN 1
          ELSE 0
        END
      );;
  }

  measure: total_video_views {
    type: sum
    sql: ${video_view_flag} ;;
  }

  dimension: channel {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
          FROM UNNEST(${event_params})
          WHERE key = 'url_channel');;
  }

  dimension: referrer_type {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
          FROM UNNEST(${event_params})
          WHERE key = 'referrer_type');;
  }

  dimension: ga_session_id {
    type: number
    sql:  (SELECT coalesce(value.int_value,cast(value.string_value as INT64))
          FROM UNNEST(${event_params})
          WHERE key = 'ga_session_id');;
  }

  # Custom dimension

  dimension: article_published_date {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'article_published_date');;
  }

  dimension: article_tags {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'article_tags');;
  }

  dimension: article_title {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'article_title');;
  }

  dimension: author_name {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'author_name');;
  }

  dimension: content_type {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'content_type');;
  }

  dimension: ico_internal_hit {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'ico_internal_hit');;
  }

  dimension: ito_external_hit {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'ito_external_hit');;
  }

  dimension: logged_in_status {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'logged_in_status');;
  }

  dimension: module_name {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'module_name');;
  }

  dimension: module_tracking {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'module_tracking');;
  }

  dimension: multivariant_experiments {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'multivariant_experiments');;
  }

  dimension: openweb_enabled {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'openweb_enabled');;
  }

  dimension: openweb_module_type {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'openweb_module_type');;
  }

  dimension: page_url {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'page_url');;
  }

  dimension: paywall_variant {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'paywall_variant');;
  }

  dimension: poll_id {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'poll_id');;
  }

  dimension: poll_name {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'poll_name');;
  }

  dimension: product_type {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'product_type');;
  }

  dimension: push_notification_campaign_id {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'push_notification_campaign_id');;
  }

  dimension: push_notification_id {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'push_notification_id');;
  }

  dimension: referrer {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'referrer');;
  }

  dimension: referrer_group {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'referrer_group');;
  }

  dimension: referring_channel {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'referring_channel');;
  }

  dimension: referring_module {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'referring_module');;
  }

  dimension: storefront_variant {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'storefront_variant');;
  }

  dimension: subscription_entitlements {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'subscription_entitlements');;
  }

  dimension: url_subchannel_level_1 {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'url_subchannel_level_1');;
  }

  dimension: user_login_details {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'user_login_details');;
  }

  dimension: user_type {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'user_type');;
  }

  dimension: video_headline {
    type: string
    sql: (SELECT cast(coalesce(value.string_value,cast(value.int_value as string)) as STRING)
             FROM UNNEST(${event_params})
             WHERE key = 'video_headline');;
  }

#not modified



  dimension: event_name {
    type: string
    sql: ${TABLE}.event_name ;;
  }
  dimension: event_params {
    hidden: yes
    sql: ${TABLE}.event_params ;;
  }
  dimension: event_previous_timestamp {
    type: number
    sql: ${TABLE}.event_previous_timestamp ;;
  }
  dimension: event_server_timestamp_offset {
    type: number
    sql: ${TABLE}.event_server_timestamp_offset ;;
  }
  dimension: event_timestamp {
    type: number
    sql: ${TABLE}.event_timestamp ;;
  }

  dimension: geo__country {
    type: string
    sql: ${TABLE}.geo.country ;;
    group_label: "Geo"
    group_item_label: "Country"
  }

  dimension: is_active_user {
    type: yesno
    sql: ${TABLE}.is_active_user ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: stream_id {
    type: string
    sql: ${TABLE}.stream_id ;;
  }

  dimension: user_pseudo_id {
    type: string
    sql: ${TABLE}.user_pseudo_id ;;
  }
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
  event_name
  ]
  }

}

view: events_20240701__event_params {

  dimension: events_20240701__event_params {
    type: string
    hidden: yes
    sql: events_20240701__event_params ;;
  }
  dimension: key {
    type: string
    sql: key ;;
  }
  dimension: value__double_value {
    type: number
    sql: ${TABLE}.value.double_value ;;
    group_label: "Value"
    group_item_label: "Double Value"
  }
  dimension: value__float_value {
    type: number
    sql: ${TABLE}.value.float_value ;;
    group_label: "Value"
    group_item_label: "Float Value"
  }
  dimension: value__int_value {
    type: number
    sql: ${TABLE}.value.int_value ;;
    group_label: "Value"
    group_item_label: "Int Value"
  }
  dimension: value__string_value {
    type: string
    sql: ${TABLE}.value.string_value ;;
    group_label: "Value"
    group_item_label: "String Value"
  }
}
