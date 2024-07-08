{{ config(materialized='table') }}

with base as (
    select 
        id,
        created_at,
        updated_at,
        tenant_id,
        first_name,
        last_name,
        email,
        username,
        title,
        department,
        mobile_number,
        deleted_at,
        disabled,
        user_level,
        password_digest,
        personal_email,
        email_verified,
        user_contact_id,
        phone_number_verified,
        dial_code,
        created_by_id,
        role_id,
        updated_by_id,
        status
    from {{ source('alex_production', 'user_accounts') }}
)

select * from base
