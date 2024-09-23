WITH src_listings AS(
    SELECT * FROM {{ref("src_listings")}}
)

SELECT
    listing_id,
    listing_name,
    room_type,
    IFF(minimum_nights=0,1,minimum_nights) AS minimum_nights,
    host_id,
    CAST(REPLACE(price_str,'$','') AS NUMERIC(10,2)) as price,
    created_at,
    updated_at
FROM
    src_listings