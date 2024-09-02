
view: article_metadata {
  derived_table: {
    sql: SELECT
          mailonline_articles_metadata.article_id  AS metadata_article_id,
          mailonline_articles_metadata.adservable  AS metadata_adservable,
          mailonline_articles_metadata.article_text  AS metadata_article_text,
          mailonline_articles_metadata.article_word_count  AS metadata_article_word_count,
          mailonline_articles_metadata.articles_source_id  AS metadata_articles_source_id,
          mailonline_articles_metadata.author_name  AS metadata_author_name,
          mailonline_articles_metadata.byline  AS metadata_byline,
              (DATE(mailonline_articles_metadata.created_date )) AS metadata_created_date,
          mailonline_articles_metadata.created_month  AS metadata_created_month,
          mailonline_articles_metadata.current_paywall_status  AS metadata_current_paywall_status,
          mailonline_articles_metadata.days_since_first_pub  AS metadata_days_since_first_pub,
          mailonline_articles_metadata.dm_source  AS metadata_dm_source,
              (CASE WHEN mailonline_articles_metadata.ever_paywalled  THEN 'Yes' ELSE 'No' END) AS mailonline_articles_metadata_ever_paywalled,
          (mailonline_articles_metadata.first_pub_date ) AS mailonline_articles_metadata_first_pub_date,
              (DATE(mailonline_articles_metadata.first_pub_datetime )) AS mailonline_articles_metadata_first_pub_datetime_date,
              (FORMAT_DATETIME('%Y-%m', mailonline_articles_metadata.first_pub_datetime )) AS mailonline_articles_metadata_first_pub_datetime_month,
          mailonline_articles_metadata.geo  AS mailonline_articles_metadata_geo,
          mailonline_articles_metadata.google_adverts_disabled  AS mailonline_articles_metadata_google_adverts_disabled,
              (CASE WHEN mailonline_articles_metadata.has_article_been_showed_as_exclusive  THEN 'Yes' ELSE 'No' END) AS mailonline_articles_metadata_has_article_been_showed_as_exclusive,
          mailonline_articles_metadata.has_fff_module  AS mailonline_articles_metadata_has_fff_module,
          mailonline_articles_metadata.has_video  AS mailonline_articles_metadata_has_video,
          mailonline_articles_metadata.headline  AS mailonline_articles_metadata_headline,
          mailonline_articles_metadata.headline_word_count  AS mailonline_articles_metadata_headline_word_count,
          mailonline_articles_metadata.image_count  AS mailonline_articles_metadata_image_count,
              (CASE WHEN mailonline_articles_metadata.is_exclusive  THEN 'Yes' ELSE 'No' END) AS mailonline_articles_metadata_is_exclusive,
          mailonline_articles_metadata.is_publish_date_available  AS mailonline_articles_metadata_is_publish_date_available,
          mailonline_articles_metadata.modified_by  AS mailonline_articles_metadata_modified_by,
              (DATE(mailonline_articles_metadata.modified_date )) AS mailonline_articles_metadata_modified_date,
          mailonline_articles_metadata.page_title  AS mailonline_articles_metadata_page_title,
          mailonline_articles_metadata.parent_channel  AS mailonline_articles_metadata_parent_channel,
          mailonline_articles_metadata.published_by  AS mailonline_articles_metadata_published_by,
          mailonline_articles_metadata.published_day  AS mailonline_articles_metadata_published_day,
          mailonline_articles_metadata.published_day_type  AS mailonline_articles_metadata_published_day_type,
          mailonline_articles_metadata.published_month  AS mailonline_articles_metadata_published_month,
          mailonline_articles_metadata.reader_comments  AS mailonline_articles_metadata_reader_comments,
              (DATE(mailonline_articles_metadata.show_as_exclusive_date )) AS mailonline_articles_metadata_show_as_exclusive_date,
          mailonline_articles_metadata.source  AS mailonline_articles_metadata_source,
          mailonline_articles_metadata.sponsor_name  AS mailonline_articles_metadata_sponsor_name,
          mailonline_articles_metadata.sponsored_article  AS mailonline_articles_metadata_sponsored_article,
          mailonline_articles_metadata.status  AS mailonline_articles_metadata_status,
          mailonline_articles_metadata.sub_channel  AS mailonline_articles_metadata_sub_channel,
          mailonline_articles_metadata.subheadline  AS mailonline_articles_metadata_subheadline,
          mailonline_articles_metadata.url  AS mailonline_articles_metadata_url,
          mailonline_articles_metadata.video_count  AS mailonline_articles_metadata_video_count,
          mailonline_articles_metadata.video_ids  AS mailonline_articles_metadata_video_ids
      FROM `mol-and-metro-ga.Metadata.mailonline_articles_metadata`  AS mailonline_articles_metadata
      limit 100 ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: mailonline_articles_metadata_article_id {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_article_id ;;
  }

  dimension: mailonline_articles_metadata_adservable {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_adservable ;;
  }

  dimension: mailonline_articles_metadata_article_text {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_article_text ;;
  }

  dimension: mailonline_articles_metadata_article_word_count {
    type: number
    sql: ${TABLE}.mailonline_articles_metadata_article_word_count ;;
  }

  dimension: mailonline_articles_metadata_articles_source_id {
    type: number
    sql: ${TABLE}.mailonline_articles_metadata_articles_source_id ;;
  }

  dimension: mailonline_articles_metadata_author_name {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_author_name ;;
  }

  dimension: mailonline_articles_metadata_byline {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_byline ;;
  }

  dimension: mailonline_articles_metadata_created_date {
    type: date
    datatype: date
    sql: ${TABLE}.mailonline_articles_metadata_created_date ;;
  }

  dimension: mailonline_articles_metadata_created_month {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_created_month ;;
  }

  dimension: mailonline_articles_metadata_current_paywall_status {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_current_paywall_status ;;
  }

  dimension: mailonline_articles_metadata_days_since_first_pub {
    type: number
    sql: ${TABLE}.mailonline_articles_metadata_days_since_first_pub ;;
  }

  dimension: mailonline_articles_metadata_dm_source {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_dm_source ;;
  }

  dimension: mailonline_articles_metadata_ever_paywalled {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_ever_paywalled ;;
  }

  dimension: mailonline_articles_metadata_first_pub_date {
    type: date
    datatype: date
    sql: ${TABLE}.mailonline_articles_metadata_first_pub_date ;;
  }

  dimension: mailonline_articles_metadata_first_pub_datetime_date {
    type: date
    datatype: date
    sql: ${TABLE}.mailonline_articles_metadata_first_pub_datetime_date ;;
  }

  dimension: mailonline_articles_metadata_first_pub_datetime_month {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_first_pub_datetime_month ;;
  }

  dimension: mailonline_articles_metadata_geo {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_geo ;;
  }

  dimension: mailonline_articles_metadata_google_adverts_disabled {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_google_adverts_disabled ;;
  }

  dimension: mailonline_articles_metadata_has_article_been_showed_as_exclusive {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_has_article_been_showed_as_exclusive ;;
  }

  dimension: mailonline_articles_metadata_has_fff_module {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_has_fff_module ;;
  }

  dimension: mailonline_articles_metadata_has_video {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_has_video ;;
  }

  dimension: mailonline_articles_metadata_headline {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_headline ;;
  }

  dimension: mailonline_articles_metadata_headline_word_count {
    type: number
    sql: ${TABLE}.mailonline_articles_metadata_headline_word_count ;;
  }

  dimension: mailonline_articles_metadata_image_count {
    type: number
    sql: ${TABLE}.mailonline_articles_metadata_image_count ;;
  }

  dimension: mailonline_articles_metadata_is_exclusive {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_is_exclusive ;;
  }

  dimension: mailonline_articles_metadata_is_publish_date_available {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_is_publish_date_available ;;
  }

  dimension: mailonline_articles_metadata_modified_by {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_modified_by ;;
  }

  dimension: mailonline_articles_metadata_modified_date {
    type: date
    datatype: date
    sql: ${TABLE}.mailonline_articles_metadata_modified_date ;;
  }

  dimension: mailonline_articles_metadata_page_title {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_page_title ;;
  }

  dimension: mailonline_articles_metadata_parent_channel {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_parent_channel ;;
  }

  dimension: mailonline_articles_metadata_published_by {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_published_by ;;
  }

  dimension: mailonline_articles_metadata_published_day {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_published_day ;;
  }

  dimension: mailonline_articles_metadata_published_day_type {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_published_day_type ;;
  }

  dimension: mailonline_articles_metadata_published_month {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_published_month ;;
  }

  dimension: mailonline_articles_metadata_reader_comments {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_reader_comments ;;
  }

  dimension: mailonline_articles_metadata_show_as_exclusive_date {
    type: date
    datatype: date
    sql: ${TABLE}.mailonline_articles_metadata_show_as_exclusive_date ;;
  }

  dimension: mailonline_articles_metadata_source {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_source ;;
  }

  dimension: mailonline_articles_metadata_sponsor_name {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_sponsor_name ;;
  }

  dimension: mailonline_articles_metadata_sponsored_article {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_sponsored_article ;;
  }

  dimension: mailonline_articles_metadata_status {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_status ;;
  }

  dimension: mailonline_articles_metadata_sub_channel {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_sub_channel ;;
  }

  dimension: mailonline_articles_metadata_subheadline {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_subheadline ;;
  }

  dimension: mailonline_articles_metadata_url {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_url ;;
  }

  dimension: mailonline_articles_metadata_video_count {
    type: number
    sql: ${TABLE}.mailonline_articles_metadata_video_count ;;
  }

  dimension: mailonline_articles_metadata_video_ids {
    type: string
    sql: ${TABLE}.mailonline_articles_metadata_video_ids ;;
  }

  set: detail {
    fields: [
        mailonline_articles_metadata_article_id,
  mailonline_articles_metadata_adservable,
  mailonline_articles_metadata_article_text,
  mailonline_articles_metadata_article_word_count,
  mailonline_articles_metadata_articles_source_id,
  mailonline_articles_metadata_author_name,
  mailonline_articles_metadata_byline,
  mailonline_articles_metadata_created_date,
  mailonline_articles_metadata_created_month,
  mailonline_articles_metadata_current_paywall_status,
  mailonline_articles_metadata_days_since_first_pub,
  mailonline_articles_metadata_dm_source,
  mailonline_articles_metadata_ever_paywalled,
  mailonline_articles_metadata_first_pub_date,
  mailonline_articles_metadata_first_pub_datetime_date,
  mailonline_articles_metadata_first_pub_datetime_month,
  mailonline_articles_metadata_geo,
  mailonline_articles_metadata_google_adverts_disabled,
  mailonline_articles_metadata_has_article_been_showed_as_exclusive,
  mailonline_articles_metadata_has_fff_module,
  mailonline_articles_metadata_has_video,
  mailonline_articles_metadata_headline,
  mailonline_articles_metadata_headline_word_count,
  mailonline_articles_metadata_image_count,
  mailonline_articles_metadata_is_exclusive,
  mailonline_articles_metadata_is_publish_date_available,
  mailonline_articles_metadata_modified_by,
  mailonline_articles_metadata_modified_date,
  mailonline_articles_metadata_page_title,
  mailonline_articles_metadata_parent_channel,
  mailonline_articles_metadata_published_by,
  mailonline_articles_metadata_published_day,
  mailonline_articles_metadata_published_day_type,
  mailonline_articles_metadata_published_month,
  mailonline_articles_metadata_reader_comments,
  mailonline_articles_metadata_show_as_exclusive_date,
  mailonline_articles_metadata_source,
  mailonline_articles_metadata_sponsor_name,
  mailonline_articles_metadata_sponsored_article,
  mailonline_articles_metadata_status,
  mailonline_articles_metadata_sub_channel,
  mailonline_articles_metadata_subheadline,
  mailonline_articles_metadata_url,
  mailonline_articles_metadata_video_count,
  mailonline_articles_metadata_video_ids
    ]
  }
}
