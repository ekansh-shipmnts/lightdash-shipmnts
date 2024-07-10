with source as (

    select *
    from {{ source('alex_production', 'carriers') }}

)

select
    id,
    carrier_type,
    name,
    standard_alpha_carrier_code,
    iata_carrier_code,
    iata_awb_prefix,
    default_address,
    created_at,
    updated_at,
    meta_information,
    short_code
from source
