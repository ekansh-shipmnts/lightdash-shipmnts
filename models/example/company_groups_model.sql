{{ config(materialized='table') }}

with base as (
    select 
        id,
        name,
        tenant_id,
        is_standard,
        is_disabled,
        created_at,
        updated_at
    from {{ source('alex_production', 'company_groups') }}
)

select * from base
