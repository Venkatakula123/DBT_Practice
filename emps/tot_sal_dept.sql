{{
    config(
        materialized='table',
        tags= "emp_models"
    )
}}


Select e.dept_id,sum(e.salary) t_sal,d.dname from {{source("test","emp")}} e 
                                             JOIN {{source("test","dept")}} d
                                             ON e.dept_id = d.deptno  group by e.dept_id,d.dname