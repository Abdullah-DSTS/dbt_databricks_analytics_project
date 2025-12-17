SELECT
    DATE(r.created_at) review_date,
    r.product_id,
    p.product_name,
    AVG(r.rating) avg_rating
FROM {{ ref('bronze_reviews') }} r
LEFT JOIN {{ ref('silver_products') }} p
ON r.product_id = p.id
GROUP BY ALL