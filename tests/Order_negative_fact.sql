
  SELECT *
  FROM {{ source('test', 'raw_orders') }}
  WHERE TOTAL_AMOUNT <= 0

