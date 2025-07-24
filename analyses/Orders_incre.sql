{{
    config(
        materialized='incremental',
        alias = 'Order_inc',
        tags = 'Orders',
        query_tag = 'Orderss',
        unique_key='order_id',
        on_schema_change = 'fail'
    )
}}

Select 
    order_id,
    customer_id,
    order_date,
    total_amount,
    status,
    created_at,
    updated_at
    from {{source("test","raw_orders")}}

{% if is_incremental() %}
  WHERE updated_at > (SELECT MAX(updated_at) FROM {{ this }})
{% endif %}
