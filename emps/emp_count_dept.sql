{{
    config(
        materialized='table',
        tags = "emp_models"
    )
}}

Select d.dname,d.loc,count(e.emp_id) as employee from {{source("test","emp")}} e
                                     JOIN {{source("test","dept")}} d on 
                                     e.dept_id = d.deptno
                                     group by d.dname,d.loc