WITH raw_reviews AS (
    SELECT * FROM {{source('airbnb','reviews')}}
)

SELECT
    listing_id,
    date as review_date,
    reviewer_name,
    comments as review_text,
    sentiment as review_sentiment,
    current_timestamp() as ingestion_time
FROM
    raw_reviews