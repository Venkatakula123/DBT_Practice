{{
    config(
        materialized='table'
    )
}}

Select *,{{tax_cal('amount',30)}} as tax_amount from {{ref("raw_payments")}}

/* https://www.youtube.com/watch?v=ajbncCRF4b0 */