-- models/analytics_shipment_document_reports.sql

with source as (

    select *
    from {{ source('alex_production', 'analytics_shipment_document_reports') }}

)

select
    id,
    create_draft_by_id,
    create_draft_at,
    draft_approved_by_id,
    draft_approved_at,
    executed_by_id,
    executed_at,
    document_deleted_by_id,
    document_deleted_at,
    document_cancelled_by_id,
    document_cancelled_at,
    given_to_customer_by_id,
    given_to_customer_at,
    surrendered_at_origin_by_id,
    surrendered_at_origin_at,
    received_at_destination_by_id,
    received_at_destination_at,
    handover_set_printed_by_id,
    shipper_id,
    consignee_id,
    hbl_bank_guarantee_email_date,
    delay_in_release,
    notify_party_1_id,
    first_draft_shared_at,
    received_by_shipper_at,
    si_filed_at,
    draft_received_at,
    bl_audited_at
from source
