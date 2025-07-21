{{
    config(
        materialized='table',
        tags= "emp_models"
    )
}}

with ea as (

Select dept_id,avg(salary) as average, count(emp_id) as Head_count from {{source("test","emp")}} group by dept_id)

Select SAlary from {{source("test","emp")}} where salary > (select max(average) from ea)

