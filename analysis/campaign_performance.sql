with campaigns as (

    select * from {{ref('mailchimp_campaigns')}}

),

events as (

    select * from {{ref('mailchimp_campaign_subscriber_activities')}}

)

select
    campaigns.title,
    campaigns.sent_at,
    count(distinct case when action = 'open' then email_address end) as opens,
    count(distinct case when action = 'click' then email_address end) as clicks,
    count(distinct case when action = 'bounce' then email_address end) as bounces
from campaigns
left outer join events on campaigns.id = events.campaign_id
where status = 'sent'
group by 1, 2
order by sent_at
