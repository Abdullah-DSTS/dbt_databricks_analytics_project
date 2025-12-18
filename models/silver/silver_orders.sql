SELECT
    id,
    DATE(created_at) order_date,
    user_id,
    product_id,
    quantity,
    unit_price,
    {{ multiply_columns_and_round('quantity', 'unit_price') }} order_amount
FROM {{ ref('bronze_orders') }}