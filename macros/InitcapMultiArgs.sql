{% macro initargs(s,f,l) %}
    initcap({{f}}||'.'||{{f}}||' '||{{l}})
{% endmacro%}