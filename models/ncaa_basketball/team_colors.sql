{{ config(materialized='table') }}

with team_colors as (

    select * from bigquery-public-data.ncaa_basketball.team_colors

)

select *
from team_colors
