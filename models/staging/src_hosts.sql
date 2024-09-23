WITH raw_hosts AS (
    SELECT * FROM AIRBNB.RAW.RAW_HOSTS
)

SELECT
    id as host_id,
    name as host_name,
    is_superhost,
    created_at,
    updated_at,
    current_timestamp() as ingestion_time
FROM
    raw_hosts