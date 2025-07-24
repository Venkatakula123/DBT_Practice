{{
    config(
        materialized='table'
    )
}}

Select max(Transaction_date) as Transaction_date,user_id, count(Prod_id) from {{source("Exp","Transactions")}} group by user_id  order by user_id