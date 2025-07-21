{{
    config(
        materialized='table'
    )
}}

Select * from {{ref("c")}}