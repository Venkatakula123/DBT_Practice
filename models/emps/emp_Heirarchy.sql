{{ config(materialized="table", tags="emp_models") }}


--with eh as (
select e1.emp_name, e1.emp_id, e1.manager_id as manager, e1.dept_id, d1.dname
from {{ source("test", "emp") }} e1
left join {{ source("test", "emp") }} e2 on e1.manager_id = e2.emp_id
join {{source("test","dept")}}  d1 on e1.dept_id = d1.deptno
order by e1.manager_id, e1.dept_id
--)

--Select distinct Manager,count(emp_id) from eh group by manager
