-- models/analytics_ocean_transport_order_reports.sql

with source as (

    select *
    from {{ source('alex_production', 'analytics_ocean_transport_order_reports') }}

)

select
    id,
    pre_carriage_node_id,
    port_of_loading_node_id,
    transshipment_hop_1_node_id,
    transshipment_hop_2_node_id,
    port_of_discharge_node_id,
    on_carriage_node_id,
    estimated_time_of_arrival,
    vessel_id,
    voyage_number,
    quantity_requested,
    quantity_picked_up,
    quantity_fulfilled,
    quantity_pick_up_pending,
    quantity_gate_pass_pending,
    quantity_gate_pass_confirmed,
    quantity_origin_port_gate_in_pending,
    quantity_origin_port_gated_in,
    quantity_loading_pending,
    quantity_loaded_on_vessel,
    quantity_shutout,
    quantity_offloaded,
    commodity_description,
    container_settings,
    sales_person,
    vendor_company_id,
    pre_carriage_location_id,
    port_of_loading_location_id,
    transshipment_hop_1_location_id,
    transshipment_hop_2_location_id,
    port_of_discharge_location_id,
    on_carriage_location_id,
    quantity_allocation_pending,
    sales_person_id,
    container_qty_and_type
from source
