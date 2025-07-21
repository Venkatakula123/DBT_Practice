{{
    config(
        materialized='table',
        tags= "upstream"
    )
}}

Select ID+1 as ID from {{ref("g4")}}