-- models/analytics_company_reports.sql

with source as (

    select *
    from {{ source('alex_production', 'analytics_company_reports') }}

)

select
    id,
    connection_status,
    sales_person_ids,
    contact_ids,
    address_ids
from source
