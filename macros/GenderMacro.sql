{% macro gender(gen) %}

    CASE  WHEN {{gen}} = 'M' then 'Male'
          WHEN {{gen}} = 'F' then 'Female'
          Else 'Nothing' End
{% endmacro %}