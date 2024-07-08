{{ config(materialized='table') }}

with base as (
    select 
        id,
        created_at,
        updated_at,
        company_account_id,
        tenant_id,
        entity_type,
        address_types,
        name,
        address_line_1,
        address_line_2,
        city,
        state,
        country,
        postal_code,
        contact_detail,
        tax_registration_type,
        tax_registration_number,
        state_tax_code,
        consol_agent_registration_number,
        iata_account_number,
        print_address,
        erp_cost_center_id,
        default_address_id,
        cost_center_code,
        pima_id
    from {{ source('alex_production', 'branch_accounts') }}
)

select * from base
