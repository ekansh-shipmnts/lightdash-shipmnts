with source as (

    select *
    from {{ source('alex_production', 'locations') }}

)

select
    id,
    name,
    city,
    country,
    country_code,
    latlong,
    type,
    unlocode,
    iata_code,
    search_string,
    created_at,
    updated_at,
    functions,
    address,
    customs_code,
    parent_id,
    is_customs_location,
    city_code,
    state,
    state_code,
    disabled,
    city_id
from source
