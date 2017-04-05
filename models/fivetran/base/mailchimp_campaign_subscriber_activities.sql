with base as (

    select distinct

        "timestamp" as happened_at,
        action,
        ip,
        campaign_id,
        list_id,
        email_address

    from {{var('subs_activities_table')}}

)

select

    md5(
        happened_at ||
        action ||
        campaign_id ||
        email_address
        ) as id,
    *

from base
