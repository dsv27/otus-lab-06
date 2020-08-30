{{ config(materialized='view') }}

with teams_with_colors as (

    select t.*, c,color from {{ ref('mbb_teams') }} t
    join {{ ref('team_colors') }} c on t.id = c.id


)

select *
from teams_with_colors
