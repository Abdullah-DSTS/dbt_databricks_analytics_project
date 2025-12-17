SELECT
    id,
    created_at,
    city,
    state,
    year(birth_date) birth_year,
    source sales_channel
FROM {{ ref('bronze_users') }}