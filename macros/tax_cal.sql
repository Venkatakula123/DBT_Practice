{% macro tax_cal(amount_column,taxpercent = 12 ) %}

    round({{amount_column}} + {{amount_column}} * {{taxpercent}} / 100) 

{% endmacro%}