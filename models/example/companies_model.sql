{{ config(materialized='table') }}

with base as (
    select 
        id,
        created_at,
        updated_at,
        tenant_id,
        carrier_id,
        parent_company_id,
        registered_name,
        entity_type,
        business_type,
        country_of_incorporation,
        date_of_incorporation,
        company_identification_number,
        tax_registration_number,
        status,
        is_iata_agent,
        agent_iata_code,
        created_by_id,
        associations,
        is_disabled,
        deleted_at,
        is_internal_company,
        merged_companies_ids,
        company_group,
        bank_link,
        remarks,
        tax_deduction_id,
        global_company_account_id,
        receivable_credit_control_type,
        sales_partner_id,
        collaborator_ids,
        custom_field_values,
        company_stage,
        company_type,
        last_activity,
        last_activity_at,
        lead_owner_id,
        domain,
        color_code
    from {{ source('alex_production', 'companies') }}
)

select * from base
