{% macro dynamicff(dbname,scname,ffname)%}
{% set aa %}
CREATE OR REPLACE FILE FORMAT {{dbname}}.{{scname}}.{{ffname}}
TYPE = CSV
SKIP_HEADER = 1
FIELD_DELIMITER=','
TRIM_SPACE =TRUE ;
{% endset%}
{% do run_query(aa) %}
{% endmacro%}

/* https://www.youtube.com/watch?v=k58Ex0KCWlo */