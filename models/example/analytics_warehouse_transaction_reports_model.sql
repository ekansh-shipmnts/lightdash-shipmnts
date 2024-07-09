-- models/analytics_warehouse_transaction_reports.sql

with source as (

    select *
    from {{ source('alex_production', 'analytics_warehouse_transaction_reports') }}

)

select
    id,
    shipper_id,
    consignee_id,
    created_at,
    updated_at,
    linked_transaction,
    created_from_transaction
from source
