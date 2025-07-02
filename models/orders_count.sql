{{
    config(materialized = 'table')
}}

SELECT 	O_ID,
{{ item_count('Pizza') }} AS PIZZA_COUNT,
{{ item_count('Vadapav') }} AS DOUGHNUT_COUNT 
FROM item group by o_id
