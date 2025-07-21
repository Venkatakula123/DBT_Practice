-- macros/item_count.sql
{% macro item_count(item) %}

    SUM(CASE WHEN i_name = '{{item}}' THEN 1 ELSE 0 END)

{% endmacro %}