{{ config(materialized='view') }}

with dmt_mbb_historical_teams_seasons as (

    select t.*,c.venue_city,c.venue_state from {{ ref('mbb_historical_teams_seasons') }} t
    join {{ ref('mbb_teams') }} c on t.team_id = c.id


)

select *
from dmt_mbb_historical_teams_seasons
