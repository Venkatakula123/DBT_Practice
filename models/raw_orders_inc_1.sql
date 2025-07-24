{{
    config(
        materialized='incremental',
        alias = 'Order_inc_1',
        tags = 'Orders',
        query_tag = 'Orderss',
        unique_key='order_id',
        incremental_strategy='delete+insert',
        on_schema_change='sync_all_columns'
    )
}}

Select 
    order_id,
    customer_id,
    order_date,
    total_amount,
    status,
    CASE WHEN STATUS = 'completed' then 4
         WHEN STATUS = 'shipped' then 2
         WHEN STATUS = 'delivered' then 3
         WHEN STATUS = 'pending' then 1
         Else 0 END as CODE,
    created_at,
    updated_at
    from {{source("test","raw_orders")}}

{% if is_incremental() %}
  WHERE updated_at > (SELECT MAX(updated_at) FROM {{ this }})
{% endif %}
