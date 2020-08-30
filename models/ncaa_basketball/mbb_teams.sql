{{ config(materialized='table') }}

with mbb_teams as (

    select * from bigquery-public-data.ncaa_basketball.mbb_teams

)

select *
from mbb_teams