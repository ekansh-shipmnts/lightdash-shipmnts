{{ config(materialized='table') }}

with base as (
    select 
        id,
        inquiry_global_id,
        customer_company_id,
        tenant_id,
        customer_address_id,
        involved_branch_id,
        created_at,
        updated_at,
        sales_person_id,
        pricing_person_id,
        assigned_to_pricing_at,
        trade_type,
        business_vertical_id,
        additional_loss_remarks,
        business_received_through,
        billing_party_id,
        billing_party_address_id,
        collaborator_ids,
        custom_field_values
    from {{ source('alex_production', 'sales_hub_inquiries') }}
)

select * from base
