{{ config(materialized="table") }}

with
    source_data as (   select * from {{('raw1')}} limit 3    )
select * from  source_data
