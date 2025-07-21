{{
    config(
        materialized='table',
        query_tag = 'dep',
        tags='daily'
    )
}}

Select * from {{ref("A")}}