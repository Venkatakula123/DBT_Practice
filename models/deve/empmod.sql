{{
    config(
        materialized='table',
        alias = 'venkat_emp',
        query_tag =  'dbt_qurs',
        tag = 'Avr'
    )
}}

Select * from emp