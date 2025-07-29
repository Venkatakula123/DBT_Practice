{{
    config(
        materialized='table',
        tags= 'm1'
    )
}}

/*{% set payment_methods = ["bank_transfer","credit_card","gift_card","coupon"] %}

-- we already define the payment methods in a macro*/

Select ORDER_ID,
{% for payment_method in get_payment_methods() %}
sum(case when payment_method = '{{payment_method}}' then amount end ) as {{payment_method}}_amount
{% if not loop.last %}, {% endif %}
{% endfor%}
 from {{ref("raw_payments")}} group by 1

 /*Select * from raw_payments pivot(sum(amount) for payment_method IN (ANY ORDER BY payment_method)) order by order_id;*/