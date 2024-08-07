-- models/analytics_shipment_container_reports.sql

with source as (

    select *
    from {{ source('alex_production', 'analytics_shipment_container_reports') }}

)

select
    id,
    primary_ocean_transport_order_id,
    shipment_details,
    cancelled_shipment_details,
    transporter_company_id,
    empty_picked_up_vehicle_number,
    pre_carriage_icd_gate_out_wagon_number,
    empty_picked_up_driver_contact,
    empty_picked_up_date,
    origin_factory_gate_in_date,
    buffer_gate_in_date,
    origin_empty_delivery_location_id,
    empty_return_cut_off,
    si_bl_reminders_count,
    buffer_location_node_id,
    is_hazardous_container,
    gate_pass_status,
    current_location_node_id,
    buffer_location_id,
    current_location_id,
    origin_factory_gate_out_date,
    buffer_gate_out_date,
    port_of_loading_gate_in_date,
    empty_pickup_location_id,
    origin_factory_location_id,
    origin_cfs_location_id,
    pre_carriage_icd_location_id,
    port_of_loading_location_id,
    trans_shipment_location_id,
    port_of_discharge_location_id,
    on_carriage_icd_location_id,
    destination_cfs_location_id,
    destination_factory_location_id,
    destination_empty_delivery_location_id,
    stuffed_date,
    origin_factory_gate_pass_filed_date,
    origin_cfs_gate_in_date,
    origin_cfs_gate_out_date,
    pre_carriage_icd_gate_in_date,
    pre_carriage_icd_gate_out_date,
    port_of_loading_gate_pass_confirmed_date,
    documents_handed_over_to_carrier_date,
    port_of_loading_loaded_date,
    port_of_discharge_discharge_date,
    port_of_discharge_gate_pass_confirmed_date,
    port_of_discharge_gate_out_date,
    destuffed_date,
    on_carriage_icd_gate_in_date,
    on_carriage_icd_gate_out_date,
    destination_cfs_gate_in_date,
    destination_cfs_gate_out_date,
    destination_factory_gate_pass_filed_date,
    destination_factory_gate_in_date,
    destination_factory_gate_out_date,
    destination_empty_to_carrier_date,
    origin_empty_to_carrier_date,
    offloaded_date,
    routing_updated_at,
    routing_updated_by,
    routing_updated_reason,
    port_of_discharge_gate_out_vehicle_number,
    port_of_discharge_gate_out_driver_contact,
    port_of_discharge_gate_out_wagon_number,
    port_of_discharge_gate_out_train_number,
    pre_carriage_icd_gate_out_vehicle_number,
    pre_carriage_icd_gate_out_driver_contact,
    pre_carriage_icd_gate_out_train_number,
    on_carriage_icd_gate_out_driver_contact,
    on_carriage_icd_gate_out_vehicle_number,
    destination_cfs_gate_out_driver_contact,
    destination_cfs_gate_out_vehicle_number,
    late_port_gated_in,
    origin_factory_gate_out_detention_amount
from source
