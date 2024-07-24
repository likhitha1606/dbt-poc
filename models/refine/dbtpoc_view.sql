{{ config(materialized="view") }}

with
    source_data as (   select * from {{ref('dbtpoc_limit')}}    )
select * from  source_data



