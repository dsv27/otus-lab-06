{{ config(materialized='views') }}

with teams_with_colors as (

    select t.*, c,color from ncaa_basketball.mbb_teams t
    join ncaa_basketball.team_colors c on t.id = c.id


)

select *
from teams_with_colors
