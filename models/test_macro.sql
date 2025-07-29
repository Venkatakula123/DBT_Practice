 select
      size,
      {{ dbt_utils.pivot('color', dbt_utils.get_column_values(ref("test"), 
                                                              'color')) }}
    from {{ref("test")}}
    group by size