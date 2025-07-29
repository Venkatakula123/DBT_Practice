{{
    config(
        materialized='table'
    )
}}

Select max(Transaction_date) as Transaction_date,user_id, count(Prod_id) as cnt from {{source("Exp","Transactions")}} group by user_id  order by user_id