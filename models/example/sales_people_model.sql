{{ config(materialized='table') }}

with base as (
    select 
        id,
        name,
        employee,
        enable,
        user_contact_id,
        created_at,
        updated_at,
        tenant_id
    from {{ source('alex_production', 'sales_people') }}
)

select * from base
