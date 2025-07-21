{% macro select_all_columns_macro(table_name) %}

    SELECT *
    FROM {{ table_name }}
    WHERE {{ caller() }}

{% endmacro %}