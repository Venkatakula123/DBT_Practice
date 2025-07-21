{{
    config(
        materialized='table',
        transient= false,
        tags = "emp_models"
    )
}}

Select * from {{source("test","emp")}}
