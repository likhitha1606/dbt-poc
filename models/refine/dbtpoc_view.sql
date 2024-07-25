{{ config(materialized="view") }}

with
    source_data as (   select * from {{ref('dbtpoc_limit')}} union select * from {{ref('dbtpoc_limit_2')}}    
    )
select * from  source_data



