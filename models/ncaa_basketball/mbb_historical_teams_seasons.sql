{{ config(materialized='table') }}

with mbb_teams as (

    select * from bigquery-public-data.ncaa_basketball.mbb_historical_teams_seasons

)

select *
from mbb_historical_teams_seasons