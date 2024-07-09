-- models/analytics_inquiry_reports.sql

with source as (

    select *
    from {{ source('alex_production', 'analytics_inquiry_reports') }}

)

select
    id,
    origin_country,
    destination_country,
    commodity_description,
    total_gross_weight,
    cargo_gross_volume,
    container_qty_and_type,
    teu_count,
    container_count,
    is_hazardous_cargo,
    is_temp_controlled,
    is_perishable,
    has_battery,
    is_general,
    total_number_of_packages,
    customer_created_on,
    shared_with_customer_date,
    rates_received_date,
    negotiation_date,
    won_date,
    lost_date,
    created_at,
    updated_at,
    customer_company_group,
    tat_rates_received,
    tat_shared_with_customer,
    tat_closed,
    loss_reason,
    loss_remarks,
    pending_quantity
from source
