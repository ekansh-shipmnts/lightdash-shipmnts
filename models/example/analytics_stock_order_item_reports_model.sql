-- models/analytics_stock_order_item_reports.sql

with source as (

    select *
    from {{ source('alex_production', 'analytics_stock_order_item_reports') }}

)

select
    id,
    booked_by_id,
    booked_at,
    executed_by_id,
    executed_at,
    reserved_by_id,
    reserved_at,
    shipment_detail,
    awb_detail
from source
