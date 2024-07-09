-- models/analytics_booking_request_reports.sql

with source as (

    select *
    from {{ source('alex_production', 'analytics_booking_request_reports') }}

)

select
    id,
    primary_ocean_transport_order_id,
    quantity_requested,
    quantity_fulfilled,
    quantity_picked_up,
    quantity_origin_port_gated_in,
    quantity_loaded_on_vessel,
    quantity_shutout,
    quantity_offloaded,
    quantity_cancelled,
    commodity_description,
    container_settings,
    container_numbers,
    shipment_details,
    house_shipment_details,
    shipment_document_master_details,
    shipment_document_house_details,
    sales_person,
    allocated_booking_details,
    shipper_id,
    customer_company_id,
    is_hazardous_cargo,
    status_text,
    total_gross_weight,
    carting_location_id,
    stuffing_status,
    recent_validity_date,
    quantity_pickup_pending,
    quantity_origin_port_gate_in_pending,
    quantity_loading_pending,
    quantity_allocation_pending,
    container_qty_and_type,
    si_bl_reminder_count,
    consignee_id,
    quantity_job_creation_pending,
    sales_person_id
from source
