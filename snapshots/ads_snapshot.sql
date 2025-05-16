{% snapshot ads_snapshot %}

{{
    config( 
        target_schema = 'DEV',
        unique_key = 'ad_id',
        strategy = 'timestamp',
        updated_at = 'updated_t'                
    )
}}

Select * from {{source("test",'ads')}}

{% endsnapshot%}