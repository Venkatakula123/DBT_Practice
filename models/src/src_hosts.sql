{{config(materialized='table')}}

with src_hosts as (
    Select *  from AIRBNB.RAW.RAW_HOSTS
)

Select 
ID as host_id,
    name as Host_name,
    IS_SUPERHOST ,
    created_at,
    updated_at from src_hosts