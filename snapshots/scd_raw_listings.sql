{% snapshot scd_raw_listings %}

{{
    config(
        target_schema = 'dev',
        unique_key = 'id',
        strategy = 'timestamp',
        updated_at = 'updated_at',
        Invalidate_hard_deletes = true
    )
}}


Select * from {{source("test",'raw_listings')}}


{% endsnapshot %}