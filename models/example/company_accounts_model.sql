with source as (

    select *
    from {{ source('alex_production', 'company_accounts') }}

)

select
    id,
    created_at,
    updated_at,
    domain_name,
    website,
    registered_name,
    display_name,
    entity_type,
    business_type,
    country_of_incorporation,
    default_currency,
    default_weight_unit,
    default_volume_unit,
    company_identification_number,
    tax_registration_number,
    is_iata_agent,
    agent_iata_code,
    associations,
    erp_auth_token,
    subdomain,
    default_company_id,
    features,
    timezone,
    tracking_auth_token,
    disabled,
    api_key,
    primary_business,
    status,
    direct_customer,
    regulatory_details,
    parent_id
from source
