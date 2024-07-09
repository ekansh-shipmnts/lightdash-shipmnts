

WITH base AS (
    SELECT
        id,
        origin_country,
        destination_country,
        shipment_details,
        products,
        container_qty_and_type,
        container_count,
        linked_shipments
    FROM {{ source('alex_production', 'analytics_product_order_reports') }}
)

SELECT * FROM base
