SELECT
    id,
    created_at,
    title product_name,
    category,
    ean,
    vendor,
    price
FROM {{ ref('bronze_products') }}