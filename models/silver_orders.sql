SELECT
    id,
    DATE(created_at) order_date,
    user_id,
    product_id,
    quantity,
    unit_price,
    quantity * unit_price order_amount
FROM {{ ref('bronze_orders') }}