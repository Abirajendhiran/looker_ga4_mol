
view: article_metadata {
  derived_table: {
    sql: SELECT
            article_id,
            adservable,
            article_word_count,
            articles_source_id,
            author_name,
            byline,
                (DATE(created_date )) AS created_date,
            created_month  AS created_month,
            current_paywall_status,
            days_since_first_pub,
            dm_source,
                (CASE WHEN ever_paywalled  THEN 'Yes' ELSE 'No' END) AS ever_paywalled,
            first_pub_date,
            first_pub_datetime,
            geo,
            google_adverts_disabled,
                (CASE WHEN has_article_been_showed_as_exclusive  THEN 'Yes' ELSE 'No' END) AS has_article_been_showed_as_exclusive,
            has_fff_module,
            has_video,
            headline,
            headline_word_count,
            image_count,
                (CASE WHEN is_exclusive  THEN 'Yes' ELSE 'No' END) AS is_exclusive,
            is_publish_date_available  AS is_publish_date_available,
            modified_by  AS modified_by,
            modified_date,
            page_title,
            parent_channel,
            published_by,
            published_day,
            published_day_type,
            published_month,
            reader_comments,
            show_as_exclusive_date,
            source,
            sponsor_name,
            sponsored_article,
            status,
            sub_channel,
            subheadline,
            url,
            video_count,
            video_ids
        FROM `mol-and-metro-ga.Metadata.mailonline_articles_metadata`  AS mailonline_articles_metadata;;
  }

  measure: count {
    type: count_distinct
    sql: ${article_id} ;;
  }

  dimension: article_id {
    type: string
    sql: ${TABLE}.article_id ;;
  }

  dimension: adservable {
    type: string
    sql: ${TABLE}.adservable ;;
  }

  dimension: article_text {
    type: string
    sql: ${TABLE}.article_text ;;
  }

  dimension: article_word_count {
    type: number
    sql: ${TABLE}.article_word_count ;;
  }

  dimension: articles_source_id {
    type: number
    sql: ${TABLE}.articles_source_id ;;
  }

  dimension: author_name {
    type: string
    sql: ${TABLE}.author_name ;;
  }

  dimension: byline {
    type: string
    sql: ${TABLE}.byline ;;
  }

  dimension: created_date {
    type: date
    datatype: date
    sql: ${TABLE}.created_date ;;
  }

  dimension: created_month {
    type: string
    sql: ${TABLE}.created_month ;;
  }

  dimension: current_paywall_status {
    type: string
    sql: ${TABLE}.current_paywall_status ;;
  }

  dimension: days_since_first_pub {
    type: number
    sql: ${TABLE}.days_since_first_pub ;;
  }

  dimension: dm_source {
    type: string
    sql: ${TABLE}.dm_source ;;
  }

  dimension: ever_paywalled {
    type: string
    sql: ${TABLE}.ever_paywalled ;;
  }

  dimension: first_pub_date {
    type: date
    datatype: date
    sql: ${TABLE}.first_pub_date ;;
  }

  dimension: first_pub_datetime_date {
    type: date
    datatype: date
    sql: ${TABLE}.first_pub_datetime_date ;;
  }

  dimension: first_pub_datetime_month {
    type: string
    sql: ${TABLE}.first_pub_datetime_month ;;
  }

  dimension: geo {
    type: string
    sql: ${TABLE}.geo ;;
  }

  dimension: google_adverts_disabled {
    type: string
    sql: ${TABLE}.google_adverts_disabled ;;
  }

  dimension: has_article_been_showed_as_exclusive {
    type: string
    sql: ${TABLE}.has_article_been_showed_as_exclusive ;;
  }

  dimension: has_fff_module {
    type: string
    sql: ${TABLE}.has_fff_module ;;
  }

  dimension: has_video {
    type: string
    sql: ${TABLE}.has_video ;;
  }

  dimension: headline {
    type: string
    sql: ${TABLE}.headline ;;
  }

  dimension: headline_word_count {
    type: number
    sql: ${TABLE}.headline_word_count ;;
  }

  dimension: image_count {
    type: number
    sql: ${TABLE}.image_count ;;
  }

  dimension: is_exclusive {
    type: string
    sql: ${TABLE}.is_exclusive ;;
  }

  dimension: is_publish_date_available {
    type: string
    sql: ${TABLE}.is_publish_date_available ;;
  }

  dimension: modified_by {
    type: string
    sql: ${TABLE}.modified_by ;;
  }

  dimension: modified_date {
    type: date
    datatype: date
    sql: ${TABLE}.modified_date ;;
  }

  dimension: page_title {
    type: string
    sql: ${TABLE}.page_title ;;
  }

  dimension: parent_channel {
    type: string
    sql: ${TABLE}.parent_channel ;;
  }

  dimension: published_by {
    type: string
    sql: ${TABLE}.published_by ;;
  }

  dimension: published_day {
    type: string
    sql: ${TABLE}.published_day ;;
  }

  dimension: published_day_type {
    type: string
    sql: ${TABLE}.published_day_type ;;
  }

  dimension: published_month {
    type: string
    sql: ${TABLE}.published_month ;;
  }

  dimension: reader_comments {
    type: string
    sql: ${TABLE}.reader_comments ;;
  }

  dimension: show_as_exclusive_date {
    type: date
    datatype: date
    sql: ${TABLE}.show_as_exclusive_date ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: sponsor_name {
    type: string
    sql: ${TABLE}.sponsor_name ;;
  }

  dimension: sponsored_article {
    type: string
    sql: ${TABLE}.sponsored_article ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: sub_channel {
    type: string
    sql: ${TABLE}.sub_channel ;;
  }

  dimension: subheadline {
    type: string
    sql: ${TABLE}.subheadline ;;
  }

  dimension: url {
    type: string
    sql: ${TABLE}.url ;;
  }

  dimension: video_count {
    type: number
    sql: ${TABLE}.video_count ;;
  }

  dimension: video_ids {
    type: string
    sql: ${TABLE}.video_ids ;;
  }

  set: detail {
    fields: [
      article_id,
      adservable,
      article_word_count,
      articles_source_id,
      author_name,
      byline,
      created_date,
      created_month,
      current_paywall_status,
      days_since_first_pub,
      dm_source,
      ever_paywalled,
      first_pub_date,
      first_pub_datetime_date,
      first_pub_datetime_month,
      geo,
      google_adverts_disabled,
      has_article_been_showed_as_exclusive,
      has_fff_module,
      has_video,
      headline,
      headline_word_count,
      image_count,
      is_exclusive,
      is_publish_date_available,
      modified_by,
      modified_date,
      page_title,
      parent_channel,
      published_by,
      published_day,
      published_day_type,
      published_month,
      reader_comments,
      show_as_exclusive_date,
      source,
      sponsor_name,
      sponsored_article,
      status,
      sub_channel,
      subheadline,
      url,
      video_count,
      video_ids
    ]
  }
}
