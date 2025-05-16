{{
    config(
        materialized='table',
        alias = 'venkat_emp',
        query_tag =  'dbt_qurs'
    )
}}

Select * from emp