-- models/analytics_shipment_custom_detail_reports.sql

with source as (

    select *
    from {{ source('alex_production', 'analytics_shipment_custom_detail_reports') }}

)

select
    id,
    checklist_created_received_date,
    checklist_approved_date,
    custom_entry_filed_date,
    appraisal_done_date,
    assessment_done_date,
    examination_done_date,
    duty_received_date,
    duty_paid_date,
    customs_released_date,
    stuffing_order_released,
    icd_egm_filed_date,
    egm_filed_date,
    drawback_processed_date,
    igst_refund_processed_date,
    brc_closed_date
from source
